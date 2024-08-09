# loading packages
library(forecast)
library(Metrics)

# reading data
setwd("E:/MCA/Unit iv")
data = read.csv("international-airline-passengers_old.csv")

# splitting data into train and valid sets
train = data[1:100,]
valid = data[101:nrow(data),]

# removing "Month" column
train$Month = NULL
valid$Month=NULL
# training model
par(mfrow = c(3, 2))
model = auto.arima(train)
# model summary
summary(model)
forecast1 = predict(model,44)
print(forecast1$pred)
print(valid$monthlytotals)
plot(x,main="Auto ")
acf(x, type = "partial", main = "Partial autocorrelation")
rmse(valid$monthlytotal, forecast$pred)
#plot(log(train$International.airline.passengers..monthly.totals.in.thousands..Jan.49...Dec.60))
#acf(diff(diff(window(train$International.airline.passengers..monthly.totals.in.thousands..Jan.49...Dec.60)),end=c(1949,8)),10)),lag.max=48,main='')
model=arima(train,order=c(0,0,1),seasonal = list(order=c(0,0,1),period=NA))
summary(model)
forecast2 = predict(model,44)
print(forecast2)
rmse(valid$monthlytotal, forecast$pred)
plot(x,main="arima")
acf(x, type = "partial", main = "Partial autocorrelation")

model=arimax(train,order=c(0,1,1),seasonal=list(order=c(0,0,1),period=NA))
summary(model)

# forecasting
forecast = predict(model,44)
print(forecast)
plot(x,main="Arimax")
acf(x, type = "partial", main = "Partial autocorrelation")

# evaluation
rmse(valid$monthlytotal, forecast$pred)
#rmse(valid$International.airline.passengers, forecast$pred)
