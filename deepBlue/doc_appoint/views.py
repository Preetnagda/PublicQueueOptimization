from django.shortcuts import render
from .models import *
from django.http import HttpResponse


def patient_view(request):
    #doc_id=request.GET['doc_id']
    doc_id=1
    #pat_id=request.GET['pat_id']
    q_details_for_curr_doc = appointmentQueue.objects.filter(doctor_required_id=doc_id)
    print(len( q_details_for_curr_doc))
    expected_time=0
    for j in q_details_for_curr_doc:
       
        expected_time=expected_time + j.predicted_time

    return HttpResponse (expected_time)











    
