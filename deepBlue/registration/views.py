from django.shortcuts import render,redirect
from django.views.decorators.http import require_POST
from registration import models,methods
from django.http import HttpResponse,JsonResponse
from queueAlgorithms import algorithms
import datetime
# Create your views here.
def getDoctorTime(request,tom=0):
    print("TOM :" + str(tom))
    doc = methods.getOptimalDoctor(tom)

    estimatedTime = None
    if doc is not -1:
        estimatedTime = algorithms.getDoctor_OverallEstimatedTime(doc)
    print(estimatedTime)

    if (request.method=='GET'):
        return JsonResponse({'estimatedTime':estimatedTime})

    else:
        return ({'estimatedTime':estimatedTime})

def register(request):

    if(request.session.get('current_Patient',None) or request.user.is_authenticated):
        return redirect("../")

    if request.method == "POST":
        # Registration process
        ptname = request.POST["patient_name"]
        ptno = request.POST["ptphno"]
        tom = request.POST["type_of_medication"]
        appointmentDate = request.POST["appointmentDate"]
        
        duplicatePatient = models.patient.objects.filter(phno = ptno)
        newPatient = None
        if(duplicatePatient.count() != 0):
            newPatient = duplicatePatient[0]
        else:
            newPatient = models.patient(name=ptname,phno=ptno)
            newPatient.save()
        ifFollowUp = methods.checkIfFollowUp(ptno)
        isFollowUpBoolean = False
        if ifFollowUp is not None :
            doc = models.doctor.objects.filter(id=ifFollowUp)[0]
            isFollowUpBoolean = True
            print(isFollowUpBoolean)
        else:
            doc = methods.getOptimalDoctor(tom)
        if doc != -1:
            estimatedTime = algorithms.getDoctor_OverallEstimatedTime(doc)
            # check duplicate patients later
            now = datetime.datetime.now()
            queueEntry = models.appointmentQueue(
                dateOfAppointment = appointmentDate,
                patient = newPatient,
                doctor_required = doc,
                predicted_time = estimatedTime,
                time_in = now,
                is_follow_up = isFollowUpBoolean
            )
            queueEntry.save()
            request.session['current_Patient'] = newPatient.id
            return redirect("../patient/")

    types_of_medication = models.doctor.CHOICES
    date = datetime.datetime.now().strftime("%d/%m/20%y")
    context={"types_of_medication":types_of_medication,"date":date}
    return render(request,"registration/directRegistration.html",context)
