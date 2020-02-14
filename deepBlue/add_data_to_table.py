
import os
os.environ.setdefault('DJANGO_SETTINGS_MODULE','deepBlue.settings')
import django
django.setup()
import datetime
from datetime import timedelta
import random
from registration.models import patient,doctor
from queueAlgorithms.models import appointmentRecords

import pmdarima as pm
import pandas as pd
import matplotlib.pyplot as plt

def get_time_per_patient(id):
    data = pd.read_csv('c1.csv')
    data=data[data['doctor_required_id']== id]
    data=data[data['is_follow_up']== False ]
    data = data.set_index(pd.DatetimeIndex(data['consultation_in']))
    resampled_data=data.resample("1D").mean() 
    resampled_data.fillna(resampled_data.interpolate(),inplace=True)
    X=resampled_data['consultation_time'].values

    smodel = pm.auto_arima(X, start_p=0, start_q=0,
                         test='adf',
                        max_p=5, max_q=5, m=7,
                         start_P=0, seasonal=True,
                         d=1, D=1, trace=True,
                         error_action='ignore',  
                         suppress_warnings=True, 
                         stepwise=True,
                         transparams=True)

    predicted_values=smodel.predict(n_periods=7)
    print(smodel.summary())
    plt.show()
    print(predicted_values,predicted_values[0])
    return predicted_values[0]

def get_time_follow_up_per_patient(id):
    data = pd.read_csv('c1.csv')
    data=data[data['doctor_required_id']== id]
    data=data[data['is_follow_up']== True ]
    data = data.set_index(pd.DatetimeIndex(data['consultation_in']))
    resampled_data=data.resample("1D").mean() 
    resampled_data.fillna(resampled_data.interpolate(),inplace=True)
    X=resampled_data['consultation_time'].values

    smodel = pm.auto_arima(X, start_p=1, start_q=1,
                         test='adf',
                         max_p=5, max_q=5, m=7,
                         start_P=0, seasonal=True,
                         d=1, D=1, trace=True,
                         error_action='ignore',  
                         suppress_warnings=True, 
                         stepwise=True,
                         transparams=True)

    predicted_values=smodel.predict(n_periods=7)
    plt.plot(predicted_values)
    plt.show()
    print(predicted_values)
    print(smodel.summary(),predicted_values[0])
    return predicted_values[0]
    
def get_doctor_objects():
    doctors=  doctor.objects.all().order_by('id')
    print(doctors)
    for a_doc in doctors:
        print(";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;    "+str(a_doc.id))
        a_doc.timepp=get_time_per_patient(a_doc.id)
        a_doc.timefpp=get_time_follow_up_per_patient(a_doc.id)
        a_doc.save()



if __name__ == '__main__':
    get_doctor_objects()
    print("done")
