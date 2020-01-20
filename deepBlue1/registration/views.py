from django.shortcuts import render,redirect
from django.views.decorators.http import require_POST
from registration import models,methods
from django.http import HttpResponse,JsonResponse
from queueAlgorithms import algorithms
# Create your views here.


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
            queueEntry = models.appointmentQueue(
                patient = newPatient,
                doctor_required = doc,
                predicted_time = estimatedTime
            )
            queueEntry.save()
            request.session['current_Patient'] = newPatient.id
            return redirect("../patient/")

    types_of_medication = models.doctor.CHOICES
    context={"types_of_medication":types_of_medication}
    return render(request,"registration/directRegistration.html",context)
