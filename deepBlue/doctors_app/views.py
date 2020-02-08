from django.shortcuts import render,redirect
from django.http import HttpResponse
from queueAlgorithms import models as queueAlgorithms_models
from registration import models as registration_models
from billing.models import *
from datetime import datetime, timezone
from queueAlgorithms import algorithms

def doctor_view(request):
    if not request.session.get('current_doctor',None):
        return redirect('login')
    else:
        docID = request.session["current_doctor"]
        doc = registration_models.doctor.objects.filter(id=docID)[0]
        patient_list=registration_models.appointmentQueue.objects.filter(doctor_required=doc,actual_time=None,dateOfAppointment=datetime.now().date())
        check = patient_list.exists()
        current_patient = None
        if check: 
            current_patient = patient_list[0]
            current_patient.actual_time = current_patient.consultation_time_in - current_patient.time_in
            current_patient.actual_time=current_patient.actual_time.seconds/60
            current_patient.consultation_in=datetime.now(timezone.utc)
        return render(request,'doctor_page.html',{'current_patient':current_patient,'patient':patient_list,'count':check})

def patient_exit(request):

    docID= request.session["current_doctor"]
    doc = registration_models.doctor.objects.filter(id=docID)[0]
    patient_list=registration_models.appointmentQueue.objects.filter(doctor_required=doc,dateOfAppointment=datetime.now().date())
    current_patient = patient_list[0]
    new_record = queueAlgorithms_models.appointmentRecords.objects.get_or_create(
        patient = current_patient.patient,
        doctor_required = doc,
        predicted_time = current_patient.predicted_time,
        actual_time = current_patient.actual_time,
        time_in=current_patient.time_in,
        consultation_in=current_patient.consultation_time_in,
        consultation_out= datetime.now(),
        consultation_time = ((datetime.now(tz=timezone.utc) - current_patient.consultation_time_in).seconds)/60,
        is_follow_up = current_patient.is_follow_up,
    )
    new_billing_record = billingQueue()
    if current_patient.is_follow_up is False :
        new_billing_record.billAmount = current_patient.doctor_required.feePerPatient
    else :
        new_billing_record.billAmount = current_patient.doctor_required.followUpFee
    new_billing_record.patient = current_patient.patient
    new_billing_record.date_time = datetime.now(timezone.utc)
    new_billing_record.doctor = current_patient.doctor_required
    new_billing_record.predicted_time = algorithms.getGeneralBillingQueueEstimatedTime()['expected_time']
    new_billing_record.save()
    current_patient.delete()
    return redirect('doctor')
