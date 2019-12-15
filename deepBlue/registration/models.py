from django.db import models
import datetime

# Create your models here.
class entryToken(models.Model):
    phno = models.CharField(max_length=10)

class patient(models.Model):
    name = models.CharField(max_length=100)
    phno = models.CharField(max_length=10)

class doctor(models.Model):
    CHOICES = (
        ("1", 'Heart'),
        ("2", 'ENT'),
        ("3", 'Physcologist'),
        ("4", 'Muscle'),
    )

    timepp = models.DecimalField(max_digits=10,decimal_places=1)
    name = models.CharField(max_length=100)
    phno = models.CharField(max_length=10)
    email_id = models.EmailField()
    speciality = models.CharField(choices = CHOICES,max_length=20)


class appointmentQueue(models.Model):
    date_time = models.DateTimeField(default=datetime.datetime.now())
    patient = models.ForeignKey(patient,on_delete=models.CASCADE)
    doctor_required = models.ForeignKey(doctor,on_delete=models.CASCADE)
    predicted_time = models.DecimalField(max_digits=10,decimal_places=1)
    actual_time = models.DecimalField(max_digits=10,decimal_places=1,null=True,blank=True,default=None) #time_in_q  time_out - time_in
    time_in=models.DateTimeField(default=datetime.datetime.now())
    time_out_consultation_in=models.DateTimeField(default=datetime.datetime.now())
    consultation_out=models.DateTimeField(default=datetime.datetime.now())
    consultation_time = models.DecimalField(max_digits=10,decimal_places=1,null=True,blank=True,default=None)#consultion_time_out - consultation_time_in