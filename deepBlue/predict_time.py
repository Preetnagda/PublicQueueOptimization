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
import seaborn as sns
register_matplotlib_converters()
#from sklearn.cross_validation import train_test_split
#from statsmodels.tsa.stattools import adfuller

data = pd.read_csv('c.csv')
data=data[data['doctor_required_id']==1 ]
d=pd.DatetimeIndex(data['consultation_in'])
data['day']=d.day
data['day_of_the_week']=d.dayofweek
data['date']=d.date
data['month']=d.month
print(d.date)
#data=data[(data['month']== 12) & (data['day']==2)]
data = data.set_index(pd.DatetimeIndex(data['consultation_in']))





#plt.hist(data.index)
resampled_data=data.resample("1D").mean() 
resampled_data.fillna(resampled_data.interpolate(),inplace=True)
X=resampled_data['consultation_time'].values

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

#plt.hist(resampled_data.index)
#plt.show()
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
print(X.size)

model_arima_fit.plot_predict(1,350,dynamic=True)
predictions=model_arima_fit.forecast(100)
print(model_arima_fit.summary())
# print(predictions[0])
# plt.plot(X)
# plt.plot(predictions,c='red')
#plt.plot(np.power(np.square(X-j),0.5))
#print(np.power(np.square(test-predictions),0.5).mean())
#plt.axhline(y=0,c='black')
#plt.axhline(y=1,c='black')
#plt.axhline(y=2,c='black')
plt.show()
