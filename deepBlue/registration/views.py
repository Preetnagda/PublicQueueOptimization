from django.shortcuts import render,redirect
from django.views.decorators.http import require_POST
from registration import models,methods
from django.http import HttpResponse,JsonResponse
from queueAlgorithms import algorithms
import datetime
from datetime import timezone,timedelta
from onlineAppointment import models as onlineAppointment_models
# Create your views here.
def getDoctorTime(request,tom=0):
    doc = algorithms.getOptimalDoctor(tom)
    journeyTime = algorithms.calculate_journey_time(tom)
    estimatedTime = None
    now = datetime.datetime.now()
    journeyTime = now + timedelta(seconds=float(journeyTime)*60)
    journeyTime = str(journeyTime.time())[0:5]
    if doc != -1:
        estimatedTime = algorithms.getDoctor_OverallEstimatedTime(doc)
    if (request.method=='GET'):
        return JsonResponse({'estimatedTime':estimatedTime,'journeyTime': journeyTime})
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
            doc = algorithms.getOptimalDoctor(tom)
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
                is_follow_up = isFollowUpBoolean,
                expected_consultation_out = now + timedelta(seconds=float(estimatedTime)*60)+timedelta(seconds=float(doc.timepp*60))

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
            doc = algorithms.getOptimalDoctor(checkAppointment.tom)
        doctorQueue = models.appointmentQueue.objects.filter(doctor_required = doc)
        minTimeIn = doctorQueue[0].time_in
        for patient in doctorQueue:
            if(patient.time_in < minTimeIn):
                minTimeIn = patient.time_in
        newTimeIn = minTimeIn + datetime.timedelta(0,3)
        if(timediff < 0):
            estimatedTime = 0
            now = datetime.datetime.now()
            queueEntry = models.appointmentQueue(
                patient = checkAppointment.patient,
                doctor_required = doc,
                predicted_time = estimatedTime,
                time_in = newTimeIn,
                is_follow_up = isFollowUpBoolean
            )
            queueEntry.save()
        elif(timediff < 120):
            estimatedTime = 0
            queueEntry = models.appointmentQueue(
                patient = checkAppointment.patient,
                doctor_required = doc,
                predicted_time = estimatedTime,
                time_in = newTimeIn,
                is_follow_up = isFollowUpBoolean
            )
            queueEntry.save()
        request.session['current_Patient'] = checkAppointment.patient.id
        return redirect("../../patient/")
