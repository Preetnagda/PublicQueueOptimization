from django.shortcuts import render
from .models import *
from django.http import HttpResponse
from registration import models
from queueAlgorithms import algorithms


def patient_view(request):
    patient = models.patient.objects.filter(id=request.session['current_Patient'])[0]
    q_details_for_curr_pat = models.appointmentQueue.objects.filter(patient=patient)[0]
    doc = q_details_for_curr_pat.doctor_required
    queueStatus = algorithms.getDoctor_PatientEstimatedTime(patient,doc)
    context = {"totalPeople": queueStatus.patientAhead, "expected_time": queueStatus.expected_time}
    return HttpResponse (expected_time)
