from django.shortcuts import render,redirect
from .models import *
from django.http import HttpResponse,JsonResponse
from registration import models
from django.views.decorators.csrf import csrf_exempt
from queueAlgorithms import algorithms

@csrf_exempt
def patient_view(request):
    if request.session.get('current_Patient',None):
        patient = models.patient.objects.filter(id=request.session['current_Patient'])[0]
        setQueue = models.appointmentQueue.objects.filter(patient=patient)
        print(setQueue.count())
        if (setQueue.count() == 0):
            del request.session['current_Patient']
            request.session.modified = True
            return HttpResponse("Go Home")
        q_details_for_curr_pat = setQueue[0]
        doc = q_details_for_curr_pat.doctor_required
        queueStatus = algorithms.getDoctor_PatientEstimatedTime(patient,doc)
        context = {"totalPeople": queueStatus["patientAhead"], "expected_time": queueStatus["estimatedTime"],"patient_name" : patient.name}
        return render(request,'home.html',{"totalPeople": queueStatus["patientAhead"], "expected_time": queueStatus["estimatedTime"],"patient_name" : patient.name})
    else:
        return redirect("../")

def getMyPatientDetails(request):
    if request.session.get('current_Patient',None) and request.method=='GET':
        patient = models.patient.objects.filter(id=request.session['current_Patient'])[0]
        setQueue = models.appointmentQueue.objects.filter(patient=patient)
        if (setQueue.count() == 0):
            
            # del request.session['current_Patient']
            # request.session.modified = True
            return JsonResponse({"totalPeople":-2})
        q_details_for_curr_pat = setQueue[0]
        doc = q_details_for_curr_pat.doctor_required
        queueStatus = algorithms.getDoctor_PatientEstimatedTime(patient,doc)
        context = {"totalPeople": queueStatus["patientAhead"], "expected_time": queueStatus["estimatedTime"],"patient_name" : patient.name}
        return JsonResponse(context)
    else:
        return JsonResponse({"totalPeople":-1})
