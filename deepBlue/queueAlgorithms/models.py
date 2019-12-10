from django.db import models
from registration import models as registration_models
import datetime

# Create your models here.
class appointmentRecords(models.Model):
    date_time = models.DateField(default=datetime.datetime.now())
    patient = models.ForeignKey(registration_models.patient,on_delete=models.CASCADE)
    doctor_required = models.ForeignKey(registration_models.doctor,on_delete=models.CASCADE)
    predicted_time = models.DecimalField(max_digits=10,decimal_places=1)
    actual_time = models.DecimalField(max_digits=10,decimal_places=1)
