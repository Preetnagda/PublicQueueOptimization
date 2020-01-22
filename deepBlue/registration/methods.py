from registration import models
from queueAlgorithms import algorithms
from queueAlgorithms.models import appointmentRecords

def getOptimalDoctor(type_of_medication,patientPhoneNumber):
    CHOICES = models.doctor.CHOICES
    #Get all patient entry with provided ph no
    patientInstance = models.appointmentRecords.objects.filter(phno=patientPhoneNumber)
    for choice in CHOICES:
        if(choice[1]==type_of_medication):
            type_of_medication = choice[0]
    docList = models.doctor.objects.filter(speciality=type_of_medication)
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
