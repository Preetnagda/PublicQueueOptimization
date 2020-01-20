from django.shortcuts import render
from django.views.decorators.http import require_POST
from . import models
# Create your views here.
def index(request):
    return render(request,"offline_token/token.html")

@require_POST
def generateToken(request):
    phoneNumber = request.POST["phNo"]
    newEntry = models.entryToken(phno = phoneNumber)
    newEntry.save()
    tokenId = newEntry.id
    context={"tokenId":tokenId}
    return render(request,"offline_token/tokenDisplay.html",context)
