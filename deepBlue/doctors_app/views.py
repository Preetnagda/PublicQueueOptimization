from django.shortcuts import render,redirect
from .models import *
from django.http import HttpResponse
import datetime

def doctor_view(request):

    doc_id = 1
    
    patient_list=appointmentQueue.objects.filter(doctor_required_id=doc_id,actual_time=None)
    current_patient = patient_list[0]
    current_patient.actual_time = current_patient.time_out_consultation_in - current_patient.time_in
    current_patient.actual_time=current_patient.actual_time.seconds/60
    return render(request,'doctor_page.html',{'current_patient':current_patient})

def patient_exit(request):
    doc_id = 1
    patient_list=appointmentQueue.objects.filter(doctor_required_id=doc_id,actual_time=None)
    current_patient = patient_list[0]
    
    current_patient.save()
    
    return redirect('doctor')






