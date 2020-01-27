from django.contrib import admin
from django.urls import path,include
from . import views


urlpatterns = [

    path('',views.doctor_view,name='doctor'),
    path('patient_exit',views.patient_exit,name='patient_exit'),
]
