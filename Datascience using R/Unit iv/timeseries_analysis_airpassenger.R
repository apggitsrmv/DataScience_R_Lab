data(AirPassengers)
class(AirPassengers)
print(AirPassengers)
#This tells you that the data series is in a time series format
start(AirPassengers)
#[1] 1949 1
#This is the start of the time series
end(AirPassengers)
#[1] 1960 12
#This is the end of the time series
frequency(AirPassengers)
#[1] 12
#The cycle of this time series is 12months in a year
summary(AirPassengers)
#The number of passengers are distributed across the spectrum
plot(AirPassengers)
#This will plot the time series
abline(reg=lm(AirPassengers~time(AirPassengers)))
# This will fit in a line
cycle(AirPassengers)
#This will print the cycle across years.
plot(aggregate(AirPassengers,FUN=mean))
#This will aggregate the cycles and display a year on year trend
boxplot(AirPassengers~cycle(AirPassengers))
#Box plot across months will give us a sense on seasonal effect
#Important Inferences
#1. The year on year trend clearly shows that the #passengers have been increasing without fail.
#2. The variance and the mean value in July and August is much higher than rest of the months.
#3. Even though the mean value of each month is quite different their variance is small. 
#Hence, we have strong seasonal effect with a cycle of 12 months or less.


#We know that we need to address two issues before we test stationary series. 
#One, we need to remove unequal variances. We do this using log of the series. 
#Two, we need to address the trend component. We do this by taking difference of the series. 
#Now, let’s test the resultant series.
plot(diff(log(AirPassengers)))
library(TTR)
#adf.test(diff(log(AirPassengers)), alternative="stationary", k=0)
#We see that the series is stationary enough to do any kind of time series modelling.
acf(log(AirPassengers))
par(mfrow = c(1,2))
acf(diff(log(AirPassengers))) # conventional ACF
pacf(diff(log(AirPassengers))) # pACF
(fit <- arima(log(AirPassengers), c(0, 1, 1),seasonal = list(order = c(0, 1, 1), period = 12)))
pred <- predict(fit, n.ahead = 10*12)

ts.plot(AirPassengers,2.718^pred$pred, log = "y", lty = c(1,3))
ts.plot(AirPassengers,2.72^pred$pred, log = "y", lty = c(1,3))

(fit <- arima(log(AirPassengers), c(0, 1, 1)))
pred <- predict(fit, n.ahead = 10*12)
ts.plot(AirPassengers,2^pred$pred,log="y",lty=c(1,3))
ts.plot(AirPassengers,3^pred$pred,log="y",lty=c(1,3))




