from django.contrib import admin
from django.urls import path
from onlineAppointment import views

urlpatterns = [
    path('',views.index,name='online_appointment'),
    path('getAvailableSlots/<appointmentDate>/<tom>',views.getAvailableSlots,name='getAvailableSlots'),
    path('qrCode',views.qrCode,name = 'qrCode')

]
