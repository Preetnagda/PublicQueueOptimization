from registration import models as registration_models
from billing.models import billingQueue
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
    time_now=timezone.now()
    for pats in q_details:
        if(currentPatientInTime > pats.time_in and pats.patient!=patient):
            patientAhead=patientAhead+1

    estimatedTime = timepp*(patientAhead)
    return {"patientAhead":(patientAhead),"estimatedTime":estimatedTime}

def getDoctor_OverallEstimatedTime(doctor):
    timepp=doctor.timepp
    patientInDoctorQueue = registration_models.appointmentQueue.objects.filter(doctor_required = doctor)
    expectedTime = patientInDoctorQueue.count()*timepp
    return expectedTime

def calculateDoctorTimePerPatient(latest_Time,doctor):
    return 10

def getGeneralBillingQueueEstimatedTime():
    billing_queue = billingQueue.objects.all()
    estimatedTime = 0
    patientsAhead = 0
    for patients in billing_queue:
        patientsAhead = patientsAhead + 1
        if(patients.isCash):
            estimatedTime = estimatedTime + 10
        else:
            estimatedTime = estimatedTime + 5
    data = {'expected_time': estimatedTime, 'patAhead': patientsAhead}
    return data

def getPatientBillingQueueEstimatedTime(patient):
    totalPatientsInQueue = billingQueue.objects.all()
    print(totalPatientsInQueue)
    try:
        patientTimeInQueue = billingQueue.objects.filter(patient=patient)[0].date_time
        patientsAhead = 0
        estimatedTime = 0
        for patientsInQueue in totalPatientsInQueue:
            if( patientsInQueue.date_time < patientTimeInQueue ):
                patientsAhead = patientsAhead + 1
                if(patientsInQueue.isCash):
                    estimatedTime = estimatedTime + 10
                else:
                    estimatedTime = estimatedTime + 5

        data = {'expected_time': estimatedTime, 'patAhead': patientsAhead}
        return (data)
    except:
        return (None)
