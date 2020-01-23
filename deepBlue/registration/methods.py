from .models import *
from queueAlgorithms import algorithms
from queueAlgorithms import models
from datetime import datetime, timezone

def getOptimalDoctor(type_of_medication):
    CHOICES = doctor.CHOICES
    for choice in CHOICES:
        if(choice[1]==type_of_medication):
            type_of_medication = choice[0]
    docList = doctor.objects.filter(speciality=type_of_medication)
    if docList is not None:
        docInstance = docList[0]
        min=algorithms.getDoctor_OverallEstimatedTime(docList[0])
        for doc in docList:
            docTime = algorithms.getDoctor_OverallEstimatedTime(doc)
            if(min>docTime):
                min = docTime
                docInstance = doc
        return docInstance
    else:
        return (-1)

def checkIfFollowUp(patientPhoneNumber):
    #get patient id
    pWithSameNumber = patient.objects.filter(phno=patientPhoneNumber).last()
    
    if pWithSameNumber is not None:
        patientId = pWithSameNumber.id
        #Get all patient entry with provided ph no
        patientRecords = models.appointmentRecords.objects.filter(patient_id=patientId).last()
        if patientRecords is not None:
            #Get the last record
            patientInstance = patientRecords
            currentTimeStamp = datetime.now(timezone.utc)
            lastTimeStamp = patientInstance.time_in
            if (currentTimeStamp - lastTimeStamp).days < 10:    
                #Allot the doctor id of last record
                doc_id = patientInstance.doctor_required_id
            else:
                doc_id = None
            return doc_id
        else:
            return None