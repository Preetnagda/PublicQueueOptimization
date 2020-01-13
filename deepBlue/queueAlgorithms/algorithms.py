from registration import models as registration_models
import datetime
from django.utils import timezone

def getDoctor_PatientEstimatedTime(patient,doctor):
    timepp = doctor.timepp
    q_details = registration_models.appointmentQueue.objects.filter(doctor_required=doctor,actual_time=None)
    patientAhead = 0
    
    time_now=timezone.now()
    for pats in q_details:
        
        if(pats.time_in < time_now):
            patientAhead=patientAhead+1

    estimatedTime = timepp*(patientAhead-1)
    return {"patientAhead":(patientAhead-1),"estimatedTime":estimatedTime}

def getDoctor_OverallEstimatedTime(doctor):
    timepp=doctor.timepp
    return 10

def calculateDoctorTimePerPatient(latest_Time,doctor):
    
    return 10
