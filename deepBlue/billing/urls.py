from django.contrib import admin
from django.urls import path
from billing import views

urlpatterns = [
    path('counter',views.generateBill,name="billing_counter"),
    path('',views.patientView),
    path('getmoredata',views.updatetable),
    path('getPatientPos',views.getPatientPos),
]
