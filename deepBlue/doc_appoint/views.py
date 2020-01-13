from django.shortcuts import render
from .models import *
from django.http import HttpResponse,JsonResponse
from registration import models
from django.views.decorators.csrf import csrf_exempt
from queueAlgorithms import algorithms

@csrf_exempt
def patient_view(request):
   
    patient = models.patient.objects.filter(id=request.session['current_Patient'])[0]
    q_details_for_curr_pat = models.appointmentQueue.objects.filter(patient=patient)[0]
    doc = q_details_for_curr_pat.doctor_required
    queueStatus = algorithms.getDoctor_PatientEstimatedTime(patient,doc)
    context = {"totalPeople": queueStatus["patientAhead"], "expected_time": queueStatus["estimatedTime"]}
    #html_string = "<h1>time expected :</h1>"+str(context["expected_time"])+"<h2>Patient Ahead in q</h2>"+str(context["totalPeople"])
    if(request.method=='GET'):
        return render(request,'home.html',{"totalPeople": queueStatus["patientAhead"], "expected_time": queueStatus["estimatedTime"]})
    elif(request.method=='POST'):
        return  JsonResponse(context)



   
