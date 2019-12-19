from django.db import models
from registration import models as registration_models
import datetime

# Create your models here.
class appointmentRecords(models.Model):
    patient = models.ForeignKey(registration_models.patient,on_delete=models.CASCADE)
    doctor_required = models.ForeignKey(registration_models.doctor,on_delete=models.CASCADE)
    predicted_time = models.DecimalField(max_digits=10,decimal_places=1)
    actual_time = models.DecimalField(max_digits=10,decimal_places=1)
    time_in=models.DateTimeField(default=datetime.datetime.now())
    consultation_in=models.DateTimeField(default=datetime.datetime.now())
    consultation_out=models.DateTimeField(default=datetime.datetime.now())
    consultation_time = models.DecimalField(max_digits=10,decimal_places=1,null=True,blank=True,default=None)#consultion_time_out - consultation_time_in
