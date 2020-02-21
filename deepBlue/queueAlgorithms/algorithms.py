from queueAlgorithms import models
from registration import models as registration_models
from billing.models import billingQueue
import datetime
from datetime import timedelta,timezone
from django.utils import timezone
import statsmodels.api as sm
import pandas as pd
import numpy as np


def getOptimalDoctor(type_of_medication):
    CHOICES = registration_models.doctor.CHOICES
    for choice in CHOICES:
        if(choice[1]==type_of_medication):
            type_of_medication = choice[0]
    docList = registration_models.doctor.objects.filter(speciality=type_of_medication)
    if docList is not None:
        docInstance = docList[0]
        docMin= getDoctor_OverallEstimatedTime(docList[0])
        for doc in docList:
            docTime = getDoctor_OverallEstimatedTime(doc)
            if(docMin>docTime):
                docMin = docTime
                docInstance = doc
        return docInstance
    else:
        return (-1)


def getDoctor_PatientEstimatedTime(patient,doctor):
    timepp = doctor.timepp

    timefpp = doctor.timefpp
    q_details = registration_models.appointmentQueue.objects.filter(doctor_required=doctor,actual_time=None)
    patientAhead = 0
    followUpPatientAhead = 0
    currentPatientInTime = None
    for pats in q_details:
        if(pats.patient == patient):
            currentPatientInTime = pats.time_in
            break
    time_now=timezone.now()
    for pats in q_details:
        if(currentPatientInTime > pats.time_in and pats.patient!=patient):
            if(pats.is_follow_up == True):
                followUpPatientAhead = followUpPatientAhead + 1
            else:
                patientAhead=patientAhead+1

    estimatedTime = timepp*(patientAhead) + timefpp*(followUpPatientAhead)
    return {"patientAhead":(patientAhead+followUpPatientAhead),"estimatedTime":estimatedTime}

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

def getPatientBillingEstimatedTime(patient):
    billingTime = 0
    try:
        patientHistory = models.billingRecords.objects.filter(patient=patient)
        cash = 0
        card = 0
        for patient in patientHistory:
            if(patient.is_Cash):
                cash = cash + 1
            else:
                card = card + 1
        if(cash>card):
            billingTime = 5
        else:
            billingTime = 10
        return(billingTime)
    except:
        return (10)

def calculate_journey_time(tom):

    now = datetime.datetime.now(timezone.utc)
    docInstance = getOptimalDoctor(tom)
    currentDoctorTime = getDoctor_OverallEstimatedTime(docInstance)
    timeForConsultation = docInstance.timepp + currentDoctorTime
    consultaionTimeOut = now + timedelta(seconds=float(timeForConsultation)*60)
    queueInstance = registration_models.appointmentQueue.objects.all().order_by('expected_consultation_out')
    currentBillingTime = getGeneralBillingQueueEstimatedTime()['expected_time']
    predictedBillingQueue = []
    overallTimeOfPatientsAheadOfMe = 0
    for patient in queueInstance:
        if(patient.expected_consultation_out < consultaionTimeOut):
            overallTimeOfPatientsAheadOfMe = overallTimeOfPatientsAheadOfMe + getPatientBillingEstimatedTime(patient.patient)
            predictedBillingQueue.append(patient)
    # timeppOfPatient = predictedBillingQueue[0].doctor_required.timepp
    # print("overallTimeOfPatientsAheadOfMe " + str(overallTimeOfPatientsAheadOfMe))
    # print("timepp" + str(docInstance.timepp))
    return (overallTimeOfPatientsAheadOfMe + 10 + docInstance.timepp)


def expected_number_of_patients(speciality_id):
    speciality_docs=registration_models.doctor.objects.filter(speciality=speciality_id)
    this_is_array=[]
    for a_doc in speciality_docs:
        docs_id=a_doc.id
        data = pd.DataFrame(list(models.appointmentRecords.objects.all().values()))
        data=data[data['doctor_required_id']== docs_id ]
        data=data[data['is_follow_up']== False ]
        d=pd.DatetimeIndex(data['consultation_in'])
        data['day']=d.day
        data['day_of_the_week']=d.dayofweek
        data['date']=d.date
        data['month']=d.month
        data = data.set_index(pd.DatetimeIndex(data['consultation_in']))
        dates = data.date.unique()
        new_df=pd.DataFrame(columns=['date','patients'])
        for adate in dates:
            new_df=new_df.append({'date' : adate , 'patients' : float(len(data[data['date']==adate]))},ignore_index=True)

        new_df = new_df.set_index('date')
        Y=new_df['patients'].values
        
        model_arima=sm.tsa.statespace.SARIMAX(Y,enxog=None,order=(1,1,0),seasonal_order=(0, 1, 1, 7))
        model_arima_fit=model_arima.fit()
        predictions=model_arima_fit.forecast(steps=7)
        this_is_array.append(predictions)


    
    print(this_is_array)
    minpos = this_is_array[0][0]
    position = [None,None]
    for i in range(len(this_is_array)):
        for j in range (len(this_is_array[i])):
            if this_is_array[i][j] < minpos:
                minpos = this_is_array[i][j]
                position = [i,j]
    minpos = position[1]
    return(minpos)
