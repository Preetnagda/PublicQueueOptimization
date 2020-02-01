from registration import models as registration_models
from billing import models as billing_models

def checkUserStatus(patient):
    if(registration_models.appointmentQueue.objects.filter(patient=patient).count()==1):
        return "registered"
    elif(billing_models.billingQueue.objects.filter(patient=patient).count()==1):
        return "consulted"
    return "billed"
