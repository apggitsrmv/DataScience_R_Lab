
# A) Moving Average 

# Load the data
weatherdata <- read.table('daily-min-temperatures.csv', sep=",", header=TRUE)
head(weatherdata)

# Convert the data to a time series object
weather_ts <- ts(weatherdata$Temp, start=c(1981, 1), frequency=365)

# Plot the original data
plot(weather_ts, main="Daily Minimum Temperatures")

# Moving Average
moving_avg <- ma(weather_ts, order=7)  # 7-day moving average
plot(moving_avg, main="7-Day Moving Average")

# Auto Regression (AR)
library(forecast)
auto_reg <- ar(weather_ts, aic=TRUE, order.max=10)  # Fit an AR model
order <- auto_reg$order
plot(auto_reg, main=paste("Auto Regression (AR(", order, "))"), xlab="Lag", ylab="ACF")

# Auto Regression (AR)
library(forecast)
auto_reg <- ar(weather_ts, aic=TRUE, order.max=10)  # Fit an AR model
order <- auto_reg$order

# Compute the ACF values
acf_values <- acf(weather_ts, plot = FALSE)$acf

# Plot the ACF as a bar plot
barplot(as.vector(acf_values), main = paste("Auto Regression (AR(", order, ")) ACF Bar Plot"), xlab = "Lag", ylab = "ACF")

# ARIMA

library(forecast)
auto_reg <- Arima(weather_ts, order=c(5,0,0))  # AR(5) model
plot(auto_reg, main="Auto Regression (ARIMA)")


arima_model <- auto_reg  # You can fine-tune ARIMA parameters
plot(forecast(arima_model), main="ARIMA Forecast")


# Auto Regression (AR)
library(forecast)
auto_reg <- ar(weather_ts, aic=TRUE, order.max=10)  # Fit an AR model
order <- auto_reg$order

# Compute the ACF values
acf_values <- acf(weather_ts, plot = FALSE)$acf

# Plot the ACF as a bar plot
barplot(as.vector(acf_values), main = paste("Auto Regression (AR(", order, ")) ACF Bar Plot"), xlab = "Lag", ylab = "ACF")



#d) Stock Analysis
library(forecast)
pred<-forecast(msft_ar,h=365)
plot(pred)
sp<-read.table('stock_daily.csv', sep=",", header= TRUE)
print(sp)
sp_ts <- ts(sp, start=2016, frequency=365)
print(sp_ts)
plot.ts(sp_ts,col=10, main="Daily Stock Prices", ylab="Price")

#e) Daily Temperature

weatherdata <- read.table('daily-min-temperatures.csv', sep=",", header= TRUE)
head(weatherdata)
plot.ts(weatherdata$Temp, main="Weather", ylab="Temperature")
plot.ts(log(weatherdata$Temp),main="Weather", ylab="Temperature")
temperature.timeseries <- ts(weatherdata$Temp)
plot.ts(temperature.timeseries)
