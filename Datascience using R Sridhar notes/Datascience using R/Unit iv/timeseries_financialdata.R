weatherdata <- read.table('daily-min-temperatures.csv', sep=",", header= TRUE)
head(weatherdata)
plot.ts(weatherdata$Temp, main="Weather", ylab="Temperature")
plot.ts(log(weatherdata$Temp),main="Weather", ylab="Temperature")
temperature.timeseries <- ts(weatherdata$Temp)
plot.ts(temperature.timeseries)
datats=ts(weatherdata,start = c(2012,1),frequency = 12)
plot(decompose(datats))
msft_ar <- arima(temperature.timeseries, order = c(1, 2, 2))
print(msft_ar)
library(forecast)
pred<-forecast(msft_ar,h=365)
plot(pred)
sp<-read.table('stock_daily.csv', sep=",", header= TRUE)
print(sp)
sp_ts <- ts(sp, start=2016, frequency=365)
print(sp_ts)
plot.ts(sp_ts,col=10, main="Daily Stock Prices", ylab="Price")
#We can observe two things here:
  
#  There is a clearly visible upward trend in the data
#The variability in the data is increasing over time.

#Differencing and Log Transformation
#Removing Variability Using Logarithmic Transformation
#Since the data shows changing variance over time, the first thing 
#we will do is stabilize the variance by applying log transformation 
#using the log() function. The resulting series will be a linear time series.


sp_linear<-log(sp_ts)
plot.ts(sp_linear, main="Daily Stock Prices (log)", ylab="Price", col=4)
par(mfrow = c(1,2))
plot.ts(sp_ts,col=4, main="Daily Stock Prices", ylab="Price")
plot.ts(sp_linear, main="Daily Stock Prices (log)", ylab="Price", col=4)
#---------------

#Removing Linear Trend
#We will now perform the first difference transformation [z(t) - z(t-1)]
#to our series to remove the linear trend.

sp_linear_diff <- diff(sp_linear)
plot.ts(sp_linear_diff, main="Daily Stock Prices (log)", ylab="Price", col=4)


#Removing Seasonal Differencing
#Let's take another example to understand how we can use the diff() 
#function to remove seasonal differencing from data. We will use the
#John Deer's Quarterly earnings data we used earlier as it exhibits seasonality.


par(mfrow = c(1,2))
de_earnings_diff <- diff(johndeere_earnings,lag=4)
plot.ts(johndeere_earnings, main="Earnings (Quarterly)")
plot.ts(de_earnings_diff, main="Earnings (Differenced, lag=4)")

par(mfrow = c(1,2))
plot.ts(sp_ts,main="MSFT Stock Prices",ylab="Prices")
sp_ts_lag1=diff(sp,1)
plot(sp_ts,sp_ts_lag1,main="Scatterplot (lag=1)")

cor(sp_ts[-252],sp_ts[-1])
abline(lm(sp_ts[-1] ~ sp_ts[-252]),col=4)

acf(sp_ts, lag.max=10)

cor(sp_ts[-(251:252)],sp_ts[-(1:2)])