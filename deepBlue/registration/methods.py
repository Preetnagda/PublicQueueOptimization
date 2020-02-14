from .models import *
from queueAlgorithms import algorithms
from queueAlgorithms import models
from datetime import datetime, timezone

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
    else:
        return None
