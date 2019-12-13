from registration import models

def getOptimalDoctor(type_of_medication):
    CHOICES = models.doctor.CHOICES
    for choice in CHOICES:
        if(choice[1]==type_of_medication):
            type_of_medication = choice[0]
    docList = models.doctor.objects.filter(speciality=type_of_medication)
    if docList is not None:
        docInstance = docList[0]
        min=algorithms.getDoctorEstimatedTime(docList[0])
        for doc in docList:
            docTime = algorithms.getDoctorEstimatedTime(doc)
            if(min>docTime):
                min = docTime
                docInstance = doc
        return docInstance
    else:
        return (-1)
