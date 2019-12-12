from django.shortcuts import render
from django.views.decorators.http import require_POST
from registration import forms,models,methods
from django.http import HttpResponse,JsonResponse
from queueAlgorithms import algorithms
# Create your views here.
def index(request):
    form = forms.numberInput()
    context = {'form':form}
    return render(request,"registration/token.html",context)

@require_POST
def generateToken(request):
    form = forms.numberInput(request.POST)
    generatedID = 0
    if form.is_valid():
        newEntry = form.save()
        generatedID = newEntry.id
        print(generatedID)
    return HttpResponse(generatedID)

def register(request):
    if request.method == "POST":
        # Registration process
        ptname = request.POST["patient_name"]
        ptno = request.POST["ptphno"]
        tom = request.POST["type_of_medication"]
        doc = methods.getOptimalDoctor
        if doc is not -1:
            estimatedTime = algorithms.getDoctorEstimatedTime(doc)
            # check duplicate patients later
            newPatient = models.patient(name=ptname,phno=ptno)
            newPatient.save()
            queueEntry = models.appointmentQueue(
                patient = newPatient,
                doctor_required = doc,
                predicted_time = estimatedTime
            )
            queueEntry.save()
            return HttpResponse("Thank You")

    types_of_medication = models.doctor.CHOICES
    context={"types_of_medication":types_of_medication}
    return render(request,"registration/directRegistration.html",context)
