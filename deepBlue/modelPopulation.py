import os
os.environ.setdefault('DJANGO_SETTINGS_MODULE','deepBlue.settings')

import django
django.setup()
import datetime
from datetime import timedelta
import random
from registration.models import patient,doctor
from queueAlgorithms.models import appointmentRecords
from faker import Faker

fakegen = Faker()

def populatePatient(n=50):

    for entry in range(n):

        fake_name = fakegen.name()
        fake_number = random.randrange(1000000000,9999999999)

        newPatient = patient.objects.get_or_create(name=fake_name,phno=fake_number)[0]
        newPatient.save()

def populateAppointmentRecords(days=50,entries=10):
    newDate = datetime.datetime.now()
    newDate = newDate - timedelta(days = days)
    for din in range(days):
        newDate = newDate + timedelta(days = 1)
        for entry in range(entries):
            newDate = newDate+timedelta(minutes = 5)
            queuePatient = patient.objects.filter(id=random.randrange(1,50))[0]
            queueDoctor = doctor.objects.filter(id=random.randrange(1,4))[0]
            queuePredictedTime = random.uniform(5.00,15.00)
            actualPredictedTime = random.uniform(5.00,15.00)
            queuePredictedTimeInteger = int(queuePredictedTime)
            queuePredictedTimeDecimal = queuePredictedTime - int(queuePredictedTime)
            queueTimeIn = newDate + timedelta(minutes = queuePredictedTimeInteger, seconds = queuePredictedTimeDecimal*60)
            queueConsultationIn = queueTimeIn + timedelta(minutes=actualPredictedTime)
            consultaionTime = random.randrange(3.00,7.00)
            queueConsultationOut = queueConsultationIn + timedelta(minutes=consultaionTime)

            newappointmentRecord = appointmentRecords.objects.get_or_create(
                                        patient=queuePatient,
                                        doctor_required=queueDoctor,
                                        predicted_time=queuePredictedTime,
                                        actual_time=actualPredictedTime,
                                        time_in=queueTimeIn,
                                        consultation_in=queueConsultationIn,
                                        consultation_out=queueConsultationOut,
                                        consultation_time=consultaionTime
                                        )[0]
            print(newappointmentRecord.time_in)


if __name__ == '__main__':
    populateAppointmentRecords()
    print("done")
