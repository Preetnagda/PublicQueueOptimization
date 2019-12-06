from registration import models

def getDoctorsList():
    doctorsList=[]
    i=1
    for e in models.doctor.objects.all():

        newDict = [i,e.name]
        doctorsList.append(newDict)
        i=i+1

    return(doctorsList)
