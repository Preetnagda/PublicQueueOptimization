from django.shortcuts import render,redirect
from django.views.decorators.http import require_POST
from registration import models,methods
from django.http import HttpResponse,JsonResponse
from queueAlgorithms import algorithms
import datetime
from datetime import timezone
from onlineAppointment import models as onlineAppointment_models
# Create your views here.
def getDoctorTime(request,tom=0):
    print("TOM :" + str(tom))
    doc = methods.getOptimalDoctor(tom)

    estimatedTime = None
    if doc != -1:
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
        appointmentDate = datetime.datetime.now().date()

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

def registerOnlineAppointment(request,patientID = None):
    if patientID != None:
        timenow = datetime.datetime.now(tz=timezone.utc)
        try:
            checkAppointment = onlineAppointment_models.onlineAppointment.objects.filter(patient = patientID)[0]
        except:
            return HttpResponse("Make an appointment")
        timediff = (timenow - checkAppointment.time).total_seconds()
        timediff = timediff/60
        ptno = checkAppointment.patient.phno
        ifFollowUp = methods.checkIfFollowUp(ptno)
        isFollowUpBoolean = False
        if ifFollowUp is not None :
            doc = models.doctor.objects.filter(id=ifFollowUp)[0]
            isFollowUpBoolean = True
        else:
            doc = methods.getOptimalDoctor(tom)
        if(timediff < 0):
            if doc != -1:
                estimatedTime = 0
                now = datetime.datetime.now()
                queueEntry = models.appointmentQueue(
                    patient = checkAppointment.patient,
                    doctor_required = doc,
                    predicted_time = estimatedTime,
                    time_in = checkAppointment.time,
                    is_follow_up = isFollowUpBoolean
                )
        elif(timediff < 45):
            queueEntry = models.appointmentQueue(
                patient = checkAppointment.patient,
                doctor_required = doc,
                predicted_time = estimatedTime,
                time_in = checkAppointment.time,
                is_follow_up = isFollowUpBoolean
            )
        queueEntry.save()
        request.session['current_Patient'] = newPatient.id
        return redirect("../patient/")
