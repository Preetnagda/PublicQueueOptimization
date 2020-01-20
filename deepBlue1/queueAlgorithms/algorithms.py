from registration import models as registration_models

def getDoctor_PatientEstimatedTime(patient,doctor):
    timepp = doctor.timepp
    q_details = registration_models.appointmentQueue.objects.filter(doctor_required=doctor,actual_time=None)
    patientAhead = 2
    estimatedTime = 10

    return {"patientAhead":patientAhead,"estimatedTime":estimatedTime}

def getDoctor_OverallEstimatedTime(doctor):
    return 10

def calculateDoctorTimePerPatient(latest_Time,doctor):
    return 10
