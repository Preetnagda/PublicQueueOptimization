from django.contrib import admin
from django.urls import path
from billing import views

urlpatterns = [
    path('',views.generateBill),
]
