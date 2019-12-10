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
        doc = request.POST.get("available_doctors",-1)
        reqDoc = models.doctor.objects.filter(name=doc)[0]
        estimatedTime = algorithms.getDoctorEstimatedTime(reqDoc)
        # check duplicate patients later
        newPatient = models.patient(name=ptname,phno=ptno)
        newPatient.save()
        queueEntry = models.appointmentQueue(
            patient = newPatient,
            doctor_required = reqDoc,
            predicted_time = estimatedTime
        )
        queueEntry.save()
        return HttpResponse("Thank You")

    types_of_medication = models.doctor.CHOICES
    doctors = []
    for doc in models.doctor.objects.all():
        doctors.append(doc.name)
    docTotal = len(doctors)
    context={"types_of_medication":types_of_medication,"doctors":doctors,"docTotalRange":range(docTotal)}
    return render(request,"registration/directRegistration.html",context)


def getDoctorsList(request):
    tom = request.GET.get('tom',None)
    print(tom)
    CHOICES = models.doctor.CHOICES
    for choice in CHOICES:
        if(choice[1]==tom):
            tom = choice[0]
    docList = models.doctor.objects.filter(speciality=tom)
    docListNames=[]
    for doc in docList:
        docListNames.append(doc.name)
        algorithms.getDoctorEstimatedTime(doc)
    print(docListNames)
    jsonData = {'docList':docListNames}
    return JsonResponse(jsonData)
