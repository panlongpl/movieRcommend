from django.contrib import admin
from django.urls import path,include
from . import views


app_name = 'myauth'
urlpatterns = [
    path('remind/',views.remind,name='remind'),
    path('noticeUser/',views.noticeUser,name='noticeUser'),

    #用户
    path('',views.index,name='index'),
    path('slogin/',views.slogin,name='slogin'),
    path('slogout/',views.slogout,name='slogout'),
    path('register/',views.register,name='register'),
    path('user_center/',views.user_center,name='user_center'),
    path('user_center/edit_pro/',views.edit_pro,name='edit_pro'),
    path('user_center/change_pass/',views.change_pass,name='user_change_pass'),

    #电影
    path('showMovie/',views.showMovie,name='showMovie'),
    #path('movieRecommd/',views.movieRecommd,name='movieRecommd'),
    path('movieRecommd/hot',views.hot,name='hot'),
    path('movieRecommd/recommd1',views.recommd1,name='recommd1'),
    path('movieRecommd/recommd2',views.recommd2,name='recommd2'),
    path('movieRecommd/recommd3',views.recommd3,name='recommd3'),
    path('newMovie/',views.NEW_movie,name='NEW_movie'),

]
