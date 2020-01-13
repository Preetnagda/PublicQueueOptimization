from django.shortcuts import render,redirect
from .models import *
from django.http import HttpResponse
from queueAlgorithms.models import *
from datetime import datetime, timezone

def doctor_view(request):

    try:
        doc_id = 1
        patient_list=appointmentQueue.objects.filter(doctor_required_id=doc_id,actual_time=None)
        current_patient = patient_list[0]
        current_patient.actual_time = current_patient.consultation_time_in - current_patient.time_in
        current_patient.actual_time=current_patient.actual_time.seconds/60
        current_patient.consultation_in=datetime.now(timezone.utc)
        return render(request,'doctor_page.html',{'current_patient':current_patient}) 
    except IndexError as error:
        print(error)
        return HttpResponse('No more patients!!!')

def patient_exit(request):

    doc_id = 1
    patient_list=appointmentQueue.objects.filter(doctor_required_id=doc_id)
    current_patient = patient_list[0]
    new_record = appointmentRecords()
    new_record = current_patient
    new_record.consultation_out=datetime.now(timezone.utc)
    new_record.consultation_time = new_record.consultation_out - new_record.consultation_time_in 
    print(new_record)
    new_record.save()
    current_patient.delete()  
    return redirect('doctor')




    





