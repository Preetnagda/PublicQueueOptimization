import pandas as pd
import numpy as np
import os
import statsmodels.api as sm
import matplotlib.pyplot as plt
import datetime
from sklearn.linear_model import LinearRegression
from pandas.plotting import register_matplotlib_converters
register_matplotlib_converters()
#from sklearn.cross_validation import train_test_split

from statsmodels.tsa.stattools import adfuller
def test_stationarity(timeseries):
    
    #Determing rolling statistics
    rolmean = timeseries.rolling(2).mean()
    rolstd = timeseries.rolling(2).std()

    #Plot rolling statistics:
    orig = plt.plot(timeseries, color='blue',label='Original')
    mean = plt.plot(rolmean, color='red', label='Rolling Mean')
    std = plt.plot(rolstd, color='black', label = 'Rolling Std')
    plt.legend(loc='best')
    plt.title('Rolling Mean & Standard Deviation')
    plt.show(block=False)
    
    #Perform Dickey-Fuller test:
    print ('Results of Dickey-Fuller Test:')
    dftest = adfuller(timeseries, autolag='AIC')
    dfoutput = pd.Series(dftest[0:4], index=['Test Statistic','p-value','#Lags Used','Number of Observations Used'])
    for key,value in dftest[4].items():
        dfoutput['Critical Value (%s)'%key] = value
    print (dfoutput)


data = pd.read_csv('appointmentRec.csv')
data=data[data['doctor_id']== 1]
data = data.set_index(pd.DatetimeIndex(data['consultation_in']))
print(data.index)

resampled_data=data.resample("1D").mean()
resampled_data.dropna(how='all',inplace=True)

resampled_data.drop(['patient_id','doctor_id','predicted_time','id','predicted_time','actual_time'],axis=1,inplace=True)
print(resampled_data)
plt.hist(resampled_data)
#test_stationarity(data['consultation_time'])
plt.show()
