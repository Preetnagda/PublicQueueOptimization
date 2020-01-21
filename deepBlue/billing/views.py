from django.shortcuts import render, HttpResponse
from datetime import datetime
from .models import billingQueue

# Create your views here.
def generateBill(request):
    patient = billingQueue.objects.all()
    date = datetime.now().strftime("%d/%m/20%y")
    context =  {'patient':patient,'date':date}
    return render(request,'billing.html',context=context)

def patientView(request):
    return HttpResponse('Billing Queue')
