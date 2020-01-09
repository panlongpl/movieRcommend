from django.db import models
from django.contrib.auth.models import User
from django.core.exceptions import ObjectDoesNotExist

# Create your models here.

class commuser(models.Model):
    user = models.OneToOneField(User,on_delete=models.CASCADE,null=True,blank=True)
    nikname = models.CharField(blank=True,max_length=50)
    birthday = models.DateField(blank=True,null=True)
    class Meta:
        verbose_name_plural = '普通用户'


class movie_info(models.Model):
    movie_name = models.CharField(max_length=50)
    movie_poster = models.CharField(max_length=100)
    movie_description = models.TextField()
    movie_director = models.CharField(max_length=50)
    movie_Starring = models.CharField(max_length=100)
    movie_type = models.CharField(max_length=50)
    movie_point = models.FloatField(default='未评分')
    movie_address = models.CharField(max_length=50)

    def __str__(self):
        return self.movie_name

class User_evaluation(models.Model):
    user_id=models.FloatField()
    movie_id=models.FloatField()
    score = models.FloatField()
    class Meta:
        unique_together=('user_id','movie_id')


class MOVIE(models.Model):
    M_id = models.CharField(max_length=50)
    titles = models.CharField(max_length=100)
    release_time = models.CharField(max_length=50)
    director = models.CharField(max_length=50)
    times = models.CharField(max_length=50)
    tags = models.CharField(max_length=200)
    gerne = models.CharField(max_length=50)
    score = models.CharField(max_length=40)
    score_numbers = models.CharField(max_length=50)
    comments_num = models.CharField(max_length=50)
    five_stars = models.CharField(max_length=50)
    four_stars = models.CharField(max_length=50)
    three_stars = models.CharField(max_length=50)
    two_stars = models.CharField(max_length=50)
    one_star = models.CharField(max_length=50)
    region = models.CharField(max_length=50)
    jpg_url = models.CharField(max_length=200)
