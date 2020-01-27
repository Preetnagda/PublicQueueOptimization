from django.shortcuts import render, HttpResponse,redirect
from django.http import HttpResponse,JsonResponse
from datetime import datetime, timezone, timedelta
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
        phnoo = request.POST["patient_phno"]
        paymentoption = request.POST["payment_option"]
        patient = patients.patient.objects.filter(phno=phnoo).last()
        id = patient.id
        payeeInstance = billingQueue.objects.filter(patient_id = id).first()
        timeOfEntry = payeeInstance.date_time
        currentTime = datetime.now(timezone.utc)
        newBillingRecord = records.billingRecords()
        tempActualTime = timeOfEntry - currentTime
        newBillingRecord.actual_time = (tempActualTime.total_seconds()/(24*60*60))
        newBillingRecord.patient = payeeInstance.patient
        newBillingRecord.doctor = payeeInstance.doctor
        newBillingRecord.billAmount = payeeInstance.billAmount
        if paymentoption == "Cash":
            newBillingRecord.is_Cash=True
        elif paymentoption == "Card":
            newBillingRecord.is_Cash=False
        newBillingRecord.predicted_time = payeeInstance.predicted_time
        #newBillingRecord.actual_time = newBillingRecord.date_time - payeeInstance.date_time
        newBillingRecord.save()
        payeeInstance.delete()
        return redirect('/billing/counter')
    else:
        patient = billingQueue.objects.all().order_by("-id")
        date = datetime.now().strftime("%d/%m/20%y")
        context =  {'patient':patient,'date':date}
        return render(request,'billing.html',context=context)

def patientView(request):
    if(request.session.get('current_Patient',None)):
        patient = request.session["current_Patient"]
        # Check if patient is not in queue
        patientQueueStatus = billingQueue.objects.filter(patient=patient)
        if(patientQueueStatus.count() == 0):
            return redirect('../')
        else:
            queueStatus = algorithms.getPatientBillingQueueEstimatedTime(patient)
            return render(request,'patientsView.html',context = {'queueStatus' : queueStatus})
    else:
        return redirect('../')

def updatetable(request):
    patient = billingQueue.objects.all()
    for patients in patient:
        patients.patient_name=str(patients.patient.name)
    date = datetime.now().strftime("%d/%m/20%y")
    context =  {'patient':patient,'date':date}
    return render(request,'moredata.html',context=context)

@require_http_methods(["GET"])
def getPatientPos(request):
    if(request.session.get('current_Patient',None)):
        patient = request.session["current_Patient"]
        patientQueueStatus = algorithms.getPatientBillingQueueEstimatedTime(patient)
        if patientQueueStatus == None:
            del request.session['current_Patient']
            request.session.modified = True
            return JsonResponse({'patAhead':None})
        else:
            return JsonResponse(patientQueueStatus)
    else:
        return JsonResponse({'patAhead':None})
