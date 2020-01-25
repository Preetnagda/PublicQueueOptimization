from django.shortcuts import render, HttpResponse,redirect
from django.http import HttpResponse,JsonResponse
from datetime import datetime
from .models import billingQueue
from queueAlgorithms import algorithms
from django.core import serializers

# Create your views here.
def generateBill(request):
    patient = billingQueue.objects.all()
    date = datetime.now().strftime("%d/%m/20%y")
    context =  {'patient':patient,'date':date}
    for patients in patient:
        print(patients.billAmount)
    
    return render(request,'billing.html',context=context)

def patientView(request):
    patient = request.session["current_Patient"]
    # Check if patient is not in queue
    patientQueueStatus = billingQueue.objects.filter(patient=patient)
    if(patientQueueStatus.count() == 0):
        return redirect('../')
    else:
        queueStatus = algorithms.getPatientBillingQueueEstimatedTime(patient)
        return render(request,'patientsView.html',context = {'queueStatus' : queueStatus})

def updatetable(request):

    patient = billingQueue.objects.all()

    
    for patients in patient:
        patients.patient_name=str(patients.patient.name)
        print(patients.patient_name)
    print(patient[1].patient_name)
    #patient=list(patient.values())
    print(patient)
    date = datetime.now().strftime("%d/%m/20%y")
    context =  {'patient':patient,'date':date}
    return render(request,'moredata.html',context=context)

    

