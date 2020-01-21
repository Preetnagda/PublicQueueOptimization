from django.db import models
from registration import models as registration_models
import datetime

# Create your models here.
class billingQueue(models.Model):
    patient = models.OneToOneField(registration_models.patient,on_delete=models.CASCADE)
    billAmount = models.DecimalField(max_digits=10,decimal_places=2)
    date_time = models.DateTimeField(default=datetime.datetime.now())
    doctor = models.ForeignKey(registration_models.doctor,on_delete=models.CASCADE)
    predicted_time = models.DecimalField(max_digits=10,decimal_places=1)


