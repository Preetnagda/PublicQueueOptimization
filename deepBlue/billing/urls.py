from django.contrib import admin
from django.urls import path
from billing import views

urlpatterns = [
    path('counter',views.generateBill),
    path('',views.patientView),
<<<<<<< HEAD
    path('getmoredata',views.updatetable),
=======
    path('getPatientPos',views.getPatientPos),
>>>>>>> cd0ca47cef7c8735e2cb6a5080f58c8774fea332
]
