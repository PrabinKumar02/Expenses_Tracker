from django.urls import path
from . import views

urlpatterns = [
    path('', views.login,name='expense-tracker-login'),
    path('forget/', views.forget,name='expense-tracker-forget-pass'),
    path('new/', views.new_user,name='expense-tracker-new-user'),
]