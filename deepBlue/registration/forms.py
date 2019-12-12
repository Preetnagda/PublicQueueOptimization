from django import forms
from registration import models,methods

class numberInput(forms.ModelForm):
    class Meta:
        model = models.entryToken
        fields = ['phno']
