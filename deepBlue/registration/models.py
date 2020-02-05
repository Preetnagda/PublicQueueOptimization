from django.db import models
import datetime
from django.contrib.auth.models import User



# Create your models here.
class patient(models.Model):
    name = models.CharField(max_length=100)
    phno = models.CharField(max_length=10)

class slots(models.Model):
    slot1 = models.BooleanField(default=False)
    slot2 = models.BooleanField(default=False)
    slot3 = models.BooleanField(default=False)
    slot4 = models.BooleanField(default=False)
    slot5 = models.BooleanField(default=False)
    slot6 = models.BooleanField(default=False)
    slot7 = models.BooleanField(default=False)
    slot8 = models.BooleanField(default=False)

class doctor(models.Model):
    CHOICES = (
        ("1", 'Heart'),
        ("2", 'ENT'),
        ("3", 'Physcologist'),
    )

    timepp = models.DecimalField(max_digits=10,decimal_places=1)
    timefpp = models.DecimalField(max_digits=10,decimal_places=1)
    name = models.CharField(max_length=100)
    phno = models.CharField(max_length=10)
    email_id = models.EmailField()
    speciality = models.CharField(choices = CHOICES,max_length=20)
    feePerPatient = models.DecimalField(max_digits=10,decimal_places=2)
    followUpFee = models.DecimalField(max_digits=10,decimal_places=2,default=100)
    user = models.OneToOneField(User,on_delete=models.CASCADE)
    # slots = models.ForeignKey(slots,on_delete=models.CASCADE)
    


class appointmentQueue(models.Model):
    dateOfAppointment = models.DateField(default=datetime.datetime.now())
    date_time = models.DateTimeField(default=datetime.datetime.now())
    time_in= models.DateTimeField()
    patient = models.ForeignKey(patient,on_delete=models.CASCADE)
    doctor_required = models.ForeignKey(doctor,on_delete=models.CASCADE)
    predicted_time = models.DecimalField(max_digits=10,decimal_places=1)
    actual_time = models.DecimalField(max_digits=10,decimal_places=1,null=True,blank=True,default=None) #time_in_q  time_out - time_in
    consultation_time_in=models.DateTimeField(default=datetime.datetime.now())
    is_follow_up = models.BooleanField(default=False)

