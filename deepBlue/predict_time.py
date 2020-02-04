import pandas as pd
import numpy as np
import os
import statsmodels.api as sm
import matplotlib.pyplot as plt
import datetime
from sklearn.linear_model import LinearRegression
from pandas.plotting import register_matplotlib_converters
from statsmodels.graphics.tsaplots import plot_acf
from statsmodels.tsa.ar_model import AR
from statsmodels.tsa.arima_model import ARIMA
from sklearn.metrics import mean_squared_error
register_matplotlib_converters()
#from sklearn.cross_validation import train_test_split

from statsmodels.tsa.stattools import adfuller
def test_stationarity(timeseries):
    
    #Determing rolling statistics
    rolmean = timeseries.rolling(60).mean()
    rolstd = timeseries.rolling(60).std()

    #Plot rolling statistics:
    orig = plt.plot(timeseries,color='blue',label='Original')
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


data = pd.read_csv('c.csv')
d=data[data['is_follow_up']==True]
d=pd.DatetimeIndex(data['consultation_in'])
data['day']=d.day
data['day_of_the_week']=d.dayofweek
data['date']=d.date
data['month']=d.month
print(d.date)
#data=data[(data['month']== 12) & (data['day']==2)]
data = data.set_index(pd.DatetimeIndex(data['consultation_in']))
#data=data['2019-11-01':'2019-12-15']


resampled_data=data.resample("1D").mean() 
print(resampled_data)

resampled_data.fillna(resampled_data.interpolate(),inplace=True)

#plt.plot(resampled_data)
#plot_acf(resampled_data['consultation_time'])

'''
resampled_data.drop(['patient_id','doctor_id','predicted_time','id','predicted_time','actual_time'],axis=1,inplace=True)
print(resampled_data)
test_stationarity(resampled_data['consultation_time'])
'''
#log_data=(np.log(resampled_data))
#test_stationarity(log_data['consultation_time'])
#test_stationarity(resampled_data['consultation_time'])
X=resampled_data['consultation_time'].values
plt.hist(resampled_data.index)
plt.show()
'''
model_ar=AR(train)
model_ar_fit=model_ar.fit()
predictions=model_ar_fit.predict(start=train_limit,end=X.size)
print(predictions)
print(X)
plt.plot(X)
plt.plot(predictions,c='red')
'''

model_arima=ARIMA(X,order=(7,1,2))
model_arima_fit=model_arima.fit()
model_arima_fit.plot_predict(3,400)
predictions=model_arima_fit.forecast(steps=100)[0]
# print(predictions[0])
# plt.plot(X)
# plt.plot(predictions,c='red')
#plt.plot(np.power(np.square(X-j),0.5))
#print(np.power(np.square(test-predictions),0.5).mean())
#plt.axhline(y=0,c='black')
#plt.axhline(y=1,c='black')
#plt.axhline(y=2,c='black')
plt.show()
