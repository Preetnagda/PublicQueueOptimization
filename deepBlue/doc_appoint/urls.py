from django.contrib import admin
from django.urls import path,include
from . import views


urlpatterns = [

    path('',views.patient_view,name='patient'),
    path('getPatientPos',views.getMyPatientDetails,name='getPatientPos')

]
