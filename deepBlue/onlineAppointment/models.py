from django.db import models
from registration import models as registration_models

# Create your models here.
class onlineAppointment(models.Model):
    patient = models.OneToOneField(registration_models.patient,on_delete=models.CASCADE)
    time = models.DateTimeField()
    tom = models.CharField(max_length=32)
