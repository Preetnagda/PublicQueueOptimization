from registration import models as registration_models

def getDoctor_PatientEstimatedTime(patient,doctor):
    timepp = doctor.timepp
    q_details = models.appointmentQueue.objects.filter(doctor_required=doctor)
    patientAhead = 2
    estimatedTime = 10
    context = {"patientAhead":patientAhead,"estimatedTime":estimatedTime}
    return context

def getDoctor_OverallEstimatedTime(doctor):


    return 10

def calculateDoctorTimePerPatient(latest_Time,doctor):
    return 10
