from django.contrib.auth.forms import UserCreationForm,UserChangeForm
from django.contrib.auth.models import User
from django import forms

class selfchangeforms(UserChangeForm):
    nikname = forms.CharField(required=True,max_length=50)
    birthday = forms.DateField(required=True)

    class Meta:
        model= User
        fields=('username','password','email','nikname','birthday')


class selfforms(UserCreationForm):
    nikname = forms.CharField(required=True,max_length=50)
    birthday = forms.DateField(required=True)

    class Meta:
        model= User
        fields=('username','password1','password2','email','nikname','birthday')