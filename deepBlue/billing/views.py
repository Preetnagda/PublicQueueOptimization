from django.shortcuts import render, HttpResponse
from datetime import datetime

# Create your views here.
def generateBill(request):
    patient_name = "Unknown"
    date = datetime.now().strftime("%d/%m/20%y")
    print(patient_name, date)
    return render(request,'billing.html',{'p_name':patient_name,'date':date})

def patientView(request):
    return HttpResponse('Billing Queue')
