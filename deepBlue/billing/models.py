from django.db import models
import datetime

# Create your models here.
class patientbill(models.Model):
    name = models.CharField(max_length=100)
    phno = models.CharField(max_length=10)

#class doctorfee(models.Model):
#    doctor = models.ForeignKey(doctor,on_delete=models.CASCADE)
#    timepp = models.DecimalField(max_digits=10,decimal_places=1)
#    name = models.CharField(max_length=100)
#    phno = models.CharField(max_length=10)
#    email_id = models.EmailField()
#    doctor_charge = models.ForeignKey()

class billingQueue(models.Model):
    date_time = models.DateTimeField(default=datetime.datetime.now())
    patient = models.ForeignKey(patient,on_delete=models.CASCADE)
    #doctor = models.ForeignKey(doctor,on_delete=models.CASCADE)
    predicted_time = models.DecimalField(max_digits=10,decimal_places=1)
    actual_time = models.DecimalField(max_digits=10,decimal_places=1,null=True,blank=True,default=None) #time_in_q  time_out - time_in
    #time_in = models.ForeignKey()
