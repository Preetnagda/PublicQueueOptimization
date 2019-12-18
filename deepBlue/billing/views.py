from django.shortcuts import render
import Date

# Create your views here.
def generateBill(request):
    patient_name = "Unknown"
    date = Date.getDate()
    print(patient_name, date)
