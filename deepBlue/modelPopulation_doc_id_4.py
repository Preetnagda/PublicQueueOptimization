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

# def populateAppointmentRecords(days=50,entries=10):
#     newDate = datetime.datetime.now()
#     newDate = newDate - timedelta(days = days)
#     for din in range(days):
#         newDate = newDate + timedelta(days = 1)
#         for entry in range(entries):
#             newDate = newDate+timedelta(minutes = 5)
#             queuePatient = patient.objects.filter(id=random.randrange(1,50))[0]
#             queueDoctor = doctor.objects.filter(id=random.randrange(1,2))[0]
#             queuePredictedTime = random.uniform(5.00,15.00)
#             actualPredictedTime = random.uniform(5.00,15.00)
#             queuePredictedTimeInteger = int(queuePredictedTime)
#             queuePredictedTimeDecimal = queuePredictedTime - int(queuePredictedTime)
#             queueTimeIn = newDate + timedelta(minutes = queuePredictedTimeInteger, seconds = queuePredictedTimeDecimal*60)
#             queueConsultationIn = queueTimeIn + timedelta(minutes=actualPredictedTime)
#             consultaionTime = random.randrange(3.00,7.00)
#             queueConsultationOut = queueConsultationIn + timedelta(minutes=consultaionTime)
#
#             newappointmentRecord = appointmentRecords.objects.get_or_create(
#                                         patient=queuePatient,
#                                         doctor_required=queueDoctor,
#                                         predicted_time=queuePredictedTime,
#                                         actual_time=actualPredictedTime,
#                                         time_in=queueTimeIn,
#                                         consultation_in=queueConsultationIn,
#                                         consultation_out=queueConsultationOut,
#                                         consultation_time=consultaionTime
#                                         )[0]
#             print(newappointmentRecord.time_in)

def populateAppointmentRecords(days=300):
    newDate = datetime.datetime.now()
    newDate = newDate - timedelta(days = 300)
    entries = 1
    day = 0

    for din in range(days):
        newDate = newDate + timedelta(days = 1)
        if newDate.weekday() == 6 or newDate.weekday() == 5:
            entries = random.randrange(10,20)
            todaysDay = 2

        elif newDate.weekday() == 2:
            entries = random.randrange(15,25)
            todaysDay = 0
        else:
            entries = random.randrange(10,15)
            todaysDay = 1

        for entry in range(entries):
            newDate = newDate+timedelta(minutes = 5)
            queuePatient = patient.objects.filter(id=random.randrange(1,50))[0]
            queueDoctor = doctor.objects.filter(id=4)[0]
            queuePredictedTime = random.uniform(5.00,15.00)
            actualPredictedTime = random.uniform(5.00,15.00)
            queuePredictedTimeInteger = int(queuePredictedTime)
            queuePredictedTimeDecimal = queuePredictedTime - int(queuePredictedTime)
            queueTimeIn = newDate + timedelta(minutes = queuePredictedTimeInteger, seconds = queuePredictedTimeDecimal*60)
            queueConsultationIn = queueTimeIn + timedelta(minutes=actualPredictedTime)
            is_follow_up = random.choice([True,False,False,False,False,False])
            
            if todaysDay == 2:
                if(is_follow_up==True):
                    consultaionTime = random.uniform(15.00,20.00)
                else:
                    consultaionTime = random.uniform(10.00,15.00)

            elif todaysDay == 1:
                if(is_follow_up==True):
                    consultaionTime = random.uniform(4.00,8.00)
                else:
                    consultaionTime = random.uniform(6.00,9.00)

            elif todaysDay == 0:
                if(is_follow_up==True):
                    consultaionTime = random.uniform(5.00,12.00)
                else:
                    consultaionTime = random.uniform(4.00,8.00)

            queueConsultationOut = queueConsultationIn + timedelta(minutes=consultaionTime)

            newappointmentRecord = appointmentRecords.objects.get_or_create(
                                        patient=queuePatient,
                                        doctor_required=queueDoctor,
                                        predicted_time=queuePredictedTime,
                                        actual_time=actualPredictedTime,
                                        time_in=queueTimeIn,
                                        consultation_in=queueConsultationIn,
                                        consultation_out=queueConsultationOut,
                                        consultation_time=consultaionTime,
                                        is_follow_up=is_follow_up,
                                        )[0]
            print(newappointmentRecord.time_in)









if __name__ == '__main__':
    populateAppointmentRecords()
    print("done")
