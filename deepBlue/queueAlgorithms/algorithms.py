from registration.models import *

def getDoctor_PatientEstimatedTime(patient,doctor):
    timepp = doctor.timepp
    q_details = appointmentQueue.objects.filter(doctor_required=doctor)
    patientAhead = 2
    estimatedTime = 10
    
    return {"patientAhead":patientAhead,"estimatedTime":estimatedTime}

def getDoctor_OverallEstimatedTime(doctor):


    return 10

def calculateDoctorTimePerPatient(latest_Time,doctor):
    return 10
