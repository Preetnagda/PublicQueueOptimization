from django import forms
from registration import models,methods

class numberInput(forms.ModelForm):
    class Meta:
        model = models.entryToken
        fields = ['phno']

class registrationForm(forms.Form):
    patient_name = forms.CharField(max_length=100)
    phno = forms.CharField(max_length=10)
    doctor = forms.ChoiceField(choices = methods.getDoctorsList())
