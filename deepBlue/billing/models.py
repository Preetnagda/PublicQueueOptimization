from django.db import models
from registration import models as registration_models
import datetime

# Create your models here.
class patientBill(models.Model):
    patient = models.OneToOneField(registration_models.patient,on_delete=models.CASCADE)
    billAmount = models.DecimalField(max_digits=10,decimal_places=2)

class billingQueue(models.Model):
    billNo = models.OneToOneField(patientBill,on_delete=models.CASCADE)
    date_time = models.DateTimeField(default=datetime.datetime.now())
    doctor = models.ForeignKey(registration_models.doctor,on_delete=models.CASCADE)
    predicted_time = models.DecimalField(max_digits=10,decimal_places=1)
    actual_time = models.DecimalField(max_digits=10,decimal_places=1,null=True,blank=True,default=None) #time_in_q  time_out - time_in
    #time_in = models.ForeignKey()