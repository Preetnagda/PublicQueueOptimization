from django.shortcuts import render
from django.views.decorators.http import require_POST
from registration import forms,models,methods
from django.http import HttpResponse

# Create your views here.
def index(request):
    form = forms.numberInput()
    context = {'form':form}
    return render(request,"registration/token.html",context)

@require_POST
def generateToken(request):
    form = forms.numberInput(request.POST)
    generatedID = 0

    if form.is_valid():
        newEntry = form.save()
        generatedID = newEntry.id
        print(generatedID)

    return HttpResponse(generatedID)

def register(request):
    form = forms.registrationForm()
    context = {'form':form}
    return render(request,"registration/directRegistration.html",context)
