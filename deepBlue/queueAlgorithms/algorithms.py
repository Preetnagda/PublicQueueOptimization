from registration import models as registration_models
import datetime
from django.utils import timezone

def getDoctor_PatientEstimatedTime(patient,doctor):
    timepp = doctor.timepp
    q_details = registration_models.appointmentQueue.objects.filter(doctor_required=doctor,actual_time=None)
    patientAhead = 0
    currentPatientInTime = None
    for pats in q_details:
        if(pats.patient == patient):
            print("Current Patient " + pats.patient.name)
            currentPatientInTime = pats.time_in
            break

    print(currentPatientInTime)
    time_now=timezone.now()

    for pats in q_details:

        if(currentPatientInTime > pats.time_in and pats.patient!=patient):
            patientAhead=patientAhead+1

    estimatedTime = timepp*(patientAhead)
    return {"patientAhead":(patientAhead),"estimatedTime":estimatedTime}

def getDoctor_OverallEstimatedTime(doctor):
    timepp=doctor.timepp
    return 10

def calculateDoctorTimePerPatient(latest_Time,doctor):

    return 10
