from django.shortcuts import render,redirect
from onlineAppointment import models
from registration import models as registration_models
import qrcode
import json
from django.views.decorators.http import require_http_methods
from datetime import datetime,time
from django.http import HttpResponse,JsonResponse
from django.templatetags.static import static


# Create your views here.

def index(request):
    if request.method == "POST":
        ptname = request.POST["patient_name"]
        ptno = request.POST["ptphno"]
        tom = request.POST["type_of_medication"]
        appointmentDate = request.POST["appointmentDate"]
        slotTime = request.POST["availableSlots"]
        date_object = datetime.strptime(appointmentDate, '%Y-%m-%d').date()
        time_object = time(int(slotTime),0,0)
        dateTime_object = datetime.combine(date_object,time_object)
        duplicatePatient = registration_models.patient.objects.filter(phno = ptno)
        patientRef = None
        if(duplicatePatient.count() != 0):
            patientRef = duplicatePatient[0]
        else:
            patientRef = registration_models.patient(name=ptname,phno=ptno)
            patientRef.save()
        newAppointment = models.onlineAppointment(
            patient =patientRef,
            time = dateTime_object,
            tom = tom
        )
        newAppointment.save()
        x = {
          "patient": patientRef.id,
          "newAppointment": newAppointment.id,
        }
        qr = qrcode.make(json.dumps(x))
        qr.save('onlineAppointment/static/onlineAppointment/img/'+str(patientRef.id)+'.png')
        request.session["onlineAppointment"] = str(patientRef.id)
        return redirect("qrCode")


    types_of_medication = registration_models.doctor.CHOICES
    context={"types_of_medication":types_of_medication}
    return render(request,"onlineAppointment/index.html",context)


def qrCode(request):
    if request.method == "POST":
        patientID = request.session["onlineAppointment"]
        return redirect("../../register/registerOnlineAppointment/"+patientID)


    patientID = request.session["onlineAppointment"]
    url = static('onlineAppointment/img/'+patientID+'.png')
    context = {"patientID" : url}
    return render(request,"onlineAppointment/qrCode.html",context)

@require_http_methods(["GET"])
def getAvailableSlots(request,appointmentDate=None,tom=None):
    if appointmentDate != None and tom != None :
        CHOICES = registration_models.doctor.CHOICES
        for choice in CHOICES:
            if(choice[1]==tom):
                tom = choice[0]
        date_object = datetime.strptime(appointmentDate, '%Y-%m-%d').date()
        slots = []
        for i in range(8):
            slots.append(True)
        availableDoctors = registration_models.doctor.objects.filter(speciality=tom)
        for doctor in availableDoctors:
            try:
                slotModel = registration_models.slots.objects.filter(slotDoctor=doctor,dateOfSlot=date_object)[0]
                if(slotModel.slot1 == False):
                    slots[0] = False
                if(slotModel.slot2 == False):
                    slots[1] = False
                if(slotModel.slot3 == False):
                    slots[2] = False
                if(slotModel.slot4 == False):
                    slots[3] = False
                if(slotModel.slot5 == False):
                    slots[4] = False
                if(slotModel.slot6 == False):
                    slots[5] = False
                if(slotModel.slot7 == False):
                    slots[6] = False
                if(slotModel.slot8 == False):
                    slots[7] = False
            except:
                pass
    data = {"slots":slots }
    return JsonResponse(data)
