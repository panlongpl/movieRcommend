from django.shortcuts import render,redirect
from django.contrib.auth import login,logout,authenticate
from django.contrib.auth.forms import UserCreationForm,UserChangeForm,PasswordChangeForm
from .forms import selfforms,selfchangeforms
from .models import commuser,movie_info,User_evaluation,MOVIE
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.core.exceptions import ObjectDoesNotExist
from math import *
from myauth.usercf import UserCF
from myauth.itemcf import ItemBasedCF
from myauth.svdrecommend import SVDrecommend
import pandas as pd
import numpy as np
# Create your views here.

def noticeUser(request):
    return render(request,'other/noticeUser.html')

def remind(request):
    return render(request,'other/remind.html')


@login_required(login_url='myauth:slogin')
def user_center(request):
    content = {'user':request.user}
    return render(request,'myauth/user_center.html',content)

#编辑个人信息
@login_required(login_url='myauth:slogin')
def edit_pro(request):
    if request.method == 'POST':
        changeform = selfchangeforms(request.POST,instance=request.user)
        if changeform.is_valid():
            changeform.save()
            return redirect('myauth:user_center')
    else:
        changeform = selfchangeforms(instance=request.user)

    contentform = {'changeform': changeform,'user':request.user}
    return render(request, 'myauth/edit_pro.html', contentform)


@login_required(login_url='myauth:slogin')
def change_pass(request):
    if request.method == 'POST':
        changepassform = PasswordChangeForm(data=request.POST, user=request.user)
        if changepassform.is_valid():
            changepassform.save()
            return redirect('myauth:slogin')
    else:
        changepassform = PasswordChangeForm(user=request.user)

    contentform = {'changepassform': changepassform, 'user': request.user}
    return render(request, 'myauth/change_pass.html', contentform)


import json
from django.forms.models import model_to_dict
#生成用户评分数据
import random
def load():
    id =int(1)
    vis = list(range(956))
    for i in range(1,956):
        vis[i]=0

    for x in range(10):
        for y in range(100):
            movie_id = random.randint(1,954)
            while vis[movie_id]==1:
                movie_id = random.randint(1,954)
            vis[movie_id]=1
            d = User_evaluation(user_id= id,movie_id=movie_id,score=round(random.uniform(5.0,10.0),1))
            d.save()
        id+=1
        print(id,'ok')
        for i in range(1,956):
            vis[i]=0
#下载图片
# 保存路径太长会导致出错
# 根据url在浏览器中打开网页，可以设定每次打开的间隔时间
#为了避免浏览器资源消耗完，每打开10个网页就关闭一次浏览器
import sys
import webbrowser
import time
import os
import urllib
def download():
    sys.path.append('libs')
    dataList = movie_info.objects.all()
    count=0
    for i in dataList:
        time.sleep(2)
        webbrowser.open(i.movie_poster,0,False)
        count+=1
        if count==10:
            count=0
            os.system('taskkill /F /IM chrome.exe')
        # print(i.movie_poster)
        # try:
        #     request = urllib.request.Request(i.movie_poster)
        #     response = urllib.request.urlopen(request)
        #     img = response.read()
        #     # print(img)
        #     with open("D:/pycharm_code/Movie_recommd/myauth/static/img/movie_info/" + str(i.id) + ".jpg", "wb") as f:
        #         f.write(img)
        #     print("D:/jpg/" + str(i.id) + ".jpg" + "已经写入本地磁盘")
        # except:
        #     print("访问为空")

#修改movie_id
def repair_id():
    data = movie_info.objects.all()
    cnt =1
    for x in data:
        x.id=cnt;
        x.save()
        cnt+=1


def index(request):
    #load()
    #   download()
    #repair_id()
    if request.user.is_authenticated==False:
         return render(request,'other/remind.html')

    error = ''
    if request.method=='POST':
        if request.POST.get('Score'):
            S = float(request.POST.get('Score'))
            if S>=0 and S<=10:
                num = User_evaluation.objects.filter(user_id=request.user.id,movie_id=request.POST.get('movie_id')).count()
                if num:
                    User_evaluation.objects.filter(user_id=request.user.id,movie_id=request.POST.get('movie_id')).update(score = request.POST.get('Score'))
                else:
                    d=User_evaluation(user_id=request.user.id, movie_id=request.POST['movie_id'],score=request.POST.get('Score'))
                    d.save()
            else:
                error='错误'
        key=request.POST['info']
    else:
        key='动作'
    data = movie_info.objects.filter(movie_type__regex=key)
    return render(request, 'myauth/index.html', {'data': data,'type':key,'error':error})

def slogin(request):
    if request.method=='POST':
        user = authenticate(request,username=request.POST['username'],password = request.POST['password'])
        if user is None:
            return render(request,'myauth/login.html',{'错误':'用户名不存在或者密码错误'})
        else:
            login(request,user=user)
            return redirect('myauth:index')
    else:
        return render(request,'myauth/login.html')


def slogout(request):
    logout(request)
    return redirect('myauth:index')

def register(request):
    if request.method == 'POST':
        registerform = selfforms(request.POST)
        if registerform.is_valid():
            registerform.save()
            user = authenticate(request, username=registerform.cleaned_data['username'], password=registerform.cleaned_data['password1'])
            user.email=registerform.cleaned_data['email']
            commuser(user=user,nikname=registerform.cleaned_data['nikname'],birthday=registerform.cleaned_data['birthday']).save()
            login(request,user)
            return redirect('myauth:index')
    else:
        registerform = selfforms()

    contentform ={'registerform':registerform}
    return render(request,'myauth/register.html',contentform)


#电影

def showMovie(request):
    if request.method == 'POST':
        error = ''
        if request.POST.get('movie_id'):
            movie_id = request.POST['movie_id']
            score = float(request.POST['Score'])
            if score >= 0 and score <= 10 :
                num = User_evaluation.objects.filter(user_id=request.user.id,movie_id=movie_id).count()
                if num:
                    User_evaluation.objects.filter(user_id=request.user.id,movie_id=movie_id).update(score=score)
                else:
                    User_evaluation(user_id=request.user.id, movie_id=movie_id,score=score).save()
            else:
                error = '错误'
            info = movie_info.objects.all()
            data = []
            data.append(info[int(movie_id)-1])
        else:
            movie_name = request.POST['movie_name']
            data = movie_info.objects.filter(movie_name=movie_name)
        if data:
            return render(request,'movie/show_movie.html',{'data':data,'error':error})
        else:
            return render(request, 'movie/show_movie.html', {'error':error})
    else:
        return redirect('myauth:index')


def NEW_movie(request):
    data = MOVIE.objects.all()[::-1][:10]
    return render(request,'movie/NEW_movie.html',{'data':data})

# def movieRecommd(request):
#     data = User_evaluation.objects.all()
#     return render(request,'movie/recommd.html',{'data':data})

def hot(request):
    data = movie_info.objects.filter(movie_type__regex='热门')
    return render(request,'movie/hot.html',{'data':data})

# 基于用户的协同过滤算法
def recommd1(request):
    userMovieScore = User_evaluation.objects.all()
    userMovieScoreDict = readData(userMovieScore)
    for i in userMovieScoreDict.items():
        print(i)
    userCF = UserCF(userMovieScoreDict)
    # 输入用户的id就是向该用户推荐电影
    if User_evaluation.objects.filter(user_id=request.user.id).count()== 0:
        return render(request, 'movie/recommd1.html', {'data': []})

    recommdResult = userCF.recommend(request.user.id)
    data = []  
    Movie = movie_info.objects.all()
    print(Movie[0])
    for x in recommdResult:
          data.append(Movie[int(x[0]-1)])
    return render(request,'movie/recommd1.html',{'data':data})

# 基于物品的协同过滤算法
def recommd2(request):
    userMovieScore = User_evaluation.objects.all()
    userMovieScoreDict = readData(userMovieScore)
    Item = ItemBasedCF(userMovieScoreDict)
    Item.ItemSimilarity()
    if User_evaluation.objects.filter(user_id=request.user.id).count()== 0:
        return render(request, 'movie/recommd2.html', {'data': []})
    # 输入用户的id就是向该用户推荐电影
    recommendDic = Item.Recommend(request.user.id)
    movie_list = []
    for i, score  in recommendDic.items():
        movie_list.append(i)
    data = []
    Movie = movie_info.objects.all()
    print(Movie[0])
    for x in movie_list:
        data.append(Movie[int(x) - 1])
    return render(request,'movie/recommd2.html',{'data':data})

# 基于SVD梯度下降的协同过滤算法
def recommd3(request):
    if User_evaluation.objects.filter(user_id=request.user.id).count()== 0:
        return render(request, 'movie/recommd3.html', {'data': []})
    userMovieScore = User_evaluation.objects.all()
    userMovieScoreDict = readData(userMovieScore)
    svd = SVDrecommend(userMovieScore, userMovieScoreDict)
    svd.read_data()
    recommend_movie_list = svd.recommend(request.user.id)
    data = []
    Movie = movie_info.objects.all()
    print(Movie[0])
    for x in recommend_movie_list:
        data.append(Movie[int(x) - 1])
    return render(request,'movie/recommd3.html',{'data':data})


# 从数据库中读取数据为用户电影评分字典
def readData(userMovieScore):
    data = {}
    for onedata in userMovieScore:
        # 每一行数据
        linedata = [onedata.user_id, onedata.movie_id, onedata.score]
        # print(linedata)
        # 如果字典中没有某位用户，则直接使用用户ID来创建这位用户
        if not linedata[0] in data.keys():
            data[linedata[0]] = {linedata[1]: linedata[2]}
        # 否则直接添加以该用户ID为key字典中
        else:
            data[linedata[0]][linedata[1]] = linedata[2]
    return data


