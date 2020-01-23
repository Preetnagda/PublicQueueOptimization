from django.shortcuts import render, HttpResponse,redirect
from datetime import datetime
from .models import billingQueue
from queueAlgorithms import algorithms

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
        estimatedTime = algorithms.getPatientBillingQueueEstimatedTime(patient)
        return HttpResponse(estimatedTime)
