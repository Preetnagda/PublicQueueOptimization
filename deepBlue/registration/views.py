from django.shortcuts import render,redirect
from django.views.decorators.http import require_POST
from registration import models,methods
from django.http import HttpResponse,JsonResponse
from queueAlgorithms import algorithms
import datetime
# Create your views here.


def checkUserStatus(request):
    if request.session.get('current_patient',None):
        return redirect("../patient/")
    else:
        return redirect("/register")

def register(request):
    if request.method == "POST":
        # Registration process
        ptname = request.POST["patient_name"]
        ptno = request.POST["ptphno"]
        tom = request.POST["type_of_medication"]
        doc = methods.getOptimalDoctor(tom)
        if doc is not -1:
            estimatedTime = algorithms.getDoctor_OverallEstimatedTime(doc)
            # check duplicate patients later
            newPatient = models.patient(name=ptname,phno=ptno)
            newPatient.save()
            now = datetime.datetime.now()
            queueEntry = models.appointmentQueue(
                patient = newPatient,
                doctor_required = doc,
                predicted_time = estimatedTime,
                time_in = now
            )
            queueEntry.save()
            request.session['current_Patient'] = newPatient.id
            return redirect("../patient/")

    types_of_medication = models.doctor.CHOICES
    context={"types_of_medication":types_of_medication}
    return render(request,"registration/directRegistration.html",context)
