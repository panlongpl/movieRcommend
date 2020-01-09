from django.contrib import admin
from django.contrib.auth.models import User
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin
from .models import commuser

# Register your models here.

class commuserInline(admin.TabularInline):
    model = commuser
    verbose_name_plural = '普通用户'

class UserAdmin(BaseUserAdmin):
    inlines = (commuserInline,)


admin.site.unregister(User)
admin.site.register(User,UserAdmin)