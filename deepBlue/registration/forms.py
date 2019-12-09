from django import forms
from registration import models,methods

class numberInput(forms.ModelForm):
    class Meta:
        model = models.entryToken
        fields = ['phno']

class registrationForm(forms.Form):
    CHOICES = (
        (1, 'Heart'),
        (2, 'ENT'),
        (3, 'Physcologist'),
        (4, 'Muscle'),
    )

    patient_name = forms.CharField(max_length=100)
    phno = forms.CharField(max_length=10)
    type_of_medication = forms.ChoiceField(choices = CHOICES)
    doctor = forms.ChoiceField(choices = methods.getDoctorsList())
