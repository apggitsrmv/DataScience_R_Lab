library(ggfortify)
library(tseries)
library(forecast)

data(AirPassengers)
head(AirPassengers)
print(AirPassengers)
AP <- AirPassengers
class(AP)

AP
sum(is.na(AP))

frequency(AP)
cycle(AP)
summary(AP)

library(ggfortify)

#ARIMA Model
arimaAP <- auto.arima(AP)
arimaAP
ggtsdiag(arimaAP)

forecastAP <- forecast(arimaAP, level = c(95), h = 36)
autoplot(forecastAP)

A <- arima(AirPassengers, order = c(2,1,1),seasonal=c(0,1,0))
library(forecast)
forecast <- forecast(A, h = 30) # predict 30 years into the future
plot(forecast)