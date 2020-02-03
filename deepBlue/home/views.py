from django.shortcuts import render,HttpResponse,redirect
from django.contrib.auth.models import User,auth
from django.contrib import messages
from registration.models import doctor
from registration import models as registration_models
from home import methods

def home(request):
    return render(request,"home/hostedPage.html")


def index(request):
    if (request.session.get('current_Patient',None)):
        patient = request.session["current_Patient"]
        patient = registration_models.patient.objects.get(id=patient)
        userStatus = methods.checkUserStatus(patient)
        if(userStatus == "registered"):
            return redirect("patient")
        elif (userStatus == "consulted"):
            return redirect("billing")
        elif (userStatus == "billed"):
            try:
                del request.session["current_Patient"]
                request.session.modified = True
            except:
                pass
            return redirect("register")
        return HttpResponse(userStatus)

    elif(request.user.is_authenticated):
        if (request.session.get('current_doctor',None)):
             return redirect ('doctor')
        else:
            return redirect('billing_counter')
    else:
        return redirect("home")


def login(request):

    if (request.session.get('which_user',None)):
        if (request.session.get('current_doctor',None)):
             return redirect ('doctor')
        else:
            return redirect('billing_counter')

    elif request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = auth.authenticate(username=username,password=password)

        if user is not None:
            if (user.is_staff):
                auth.login(request,user)
                doctor_logged_in=doctor.objects.filter(user_id = user.id)
                print(doctor_logged_in)
                request.session['which_user']='doctor'
                request.session['current_doctor']=doctor_logged_in[0].id
                return redirect ('doctor')

            else:
                auth.login(request,user)
                request.session['which_user']='billing'
                return redirect('billing_counter')
        else:
            messages.info(request,'wrong username or password')
            return redirect ('login')
    else:
        return render(request,'home/login.html')



def logout(request):
    auth.logout(request)
    return redirect ('login')
