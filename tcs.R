library(timeSeries)
library(timeDate)
library(quantmod)
library(fUnitRoots)
library(forecast)
library(ggplot2)
# Descriptive Analytics
df<- getSymbols("TCS.NS",auto.assign = FALSE, from= '2015-01-01', to='2024-05-07')
head(df)
View(df)
data_w<-getSymbols("TCS.NS",auto.assign = FALSE,from="2015-01-01",to=Sys.Date())
data1<-data.frame(data_w,date=as.Date(rownames(data.frame(data_w))))
head(data1)
tail(data1)
TCS = timeSeries(data1$TCS.NS.Adjusted,data1$date)
View(TCS)
class(TCS)
plot(TCS, main = "TCS.NS Adj close Stock Price", xlab = "DATE", ylab = " Adj Close Price")
# Calculating differences
TCS_D <- diff(TCS)
plot(TCS_D)
summary(TCS_D)
#Stationarity Check
adfTest(TCS_D,lags = 0,type = "c")
par(mfrow=c(1,1))
#Identifying AR-MA Processes
Acf(TCS_D,main="ACF PLOT")
Pacf(TCS_D,main="PACF PLOT")
#ARIMA Model Identifying best fit model (Model Diagnosis)
ModelN=auto.arima(TCS,max.p = 20,max.q = 20)
summary(ModelN) 
checkresiduals(ModelN)
#Forecast 
# Getting forecasted values
forecast_result <- forecast(ModelN, level=c(95),h = 30)
forecast_result
plot(forecast_result)
# Plotting actual and forecasted values
autoplot(forecast_result) +
  xlab("Date") +
  ylab("Price") +
  ggtitle("Actual vs Forecasted Values")

