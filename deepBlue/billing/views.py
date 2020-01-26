from django.shortcuts import render, HttpResponse,redirect
from django.http import HttpResponse,JsonResponse
from datetime import datetime
from .models import billingQueue
from queueAlgorithms import models as records
from registration import models as patients
from queueAlgorithms import algorithms
from django.views.decorators.http import require_http_methods
from django.http import JsonResponse
from django.core import serializers




# Create your views here.
def generateBill(request):
    if request.method == "POST" :
        print("Submit button pressed")
        phnoo = request.POST["patient_phno"]
        paymentoption = request.POST["payment_option"]

        patient = patients.patient.objects.filter(phno=phnoo).last()
        id = patient.id

        payeeInstance = billingQueue.objects.filter(patient_id = id).first()

        newBillingRecord = records.billingRecords()
        newBillingRecord.patient = payeeInstance.patient
        newBillingRecord.doctor = payeeInstance.doctor
        newBillingRecord.billAmount = payeeInstance.billAmount
        print("::::::::::::::::::::::::::::::::::::::::")
        print(paymentoption)
        if paymentoption == "0":
            newBillingRecord.is_Cash=True
        elif paymentoption == "1":
            newBillingRecord.is_Cash=False
        newBillingRecord.predicted_time = payeeInstance.predicted_time
        #newBillingRecord.actual_time = newBillingRecord.date_time - payeeInstance.date_time
        newBillingRecord.save()
        payeeInstance.delete()

        print(payeeInstance.isCash)
        return redirect('/billing/counter')
    else:
        patient = billingQueue.objects.all().order_by("-id")
        date = datetime.now().strftime("%d/%m/20%y")
        context =  {'patient':patient,'date':date}
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

    #patient=list(patient.values())
    print(patient)
    date = datetime.now().strftime("%d/%m/20%y")
    context =  {'patient':patient,'date':date}
    return render(request,'moredata.html',context=context)

@require_http_methods(["GET"])
def getPatientPos(request):
    if(request.session.get('current_Patient',None)):
        print("billing :")
        patient = request.session["current_Patient"]
        patientQueueStatus = algorithms.getPatientBillingQueueEstimatedTime(patient)
        return JsonResponse(patientQueueStatus)
