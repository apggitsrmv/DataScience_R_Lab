# Load necessary libraries
library(TSA)
library(forecast)

# Pull data from Yahoo finance (Note: Make sure to install and load 'quantmod' before running this)
stock <- getSymbols('AMD', src = 'yahoo', from = '2012-01-01', to = '2017-10-24')
close_stock <- Cl(AMD)

# Plot raw data
plot(close_stock, type = 'l', xlab = 'Time', ylab = 'Close Prices', main = 'Daily Close Prices of Stock')

# Check stationarity
#adf_test_result <- adf.test(close_stock, alternative = 'stationary')
#print(adf_test_result)

# First Degree Differencing on Raw Data
d1 <- diff(close_stock, lag = 1)

# Plot differenced data
plot.ts(d1, xlab = 'Time', ylab = 'Difference', main = 'First Degree Differencing on Raw Data')

# Check stationarity of differenced data
#adf_test_result_d1 <- adf.test(d1, alternative = 'stationary')
#print(adf_test_result_d1)

# Fit ARIMA model
model <- auto.arima(close_stock)
summary(model)

# Plot forecast
forecast_result <- forecast(model, h = 100, level = 99)
plot(forecast_result, main = 'ARIMA Forecast', xlab = 'Time', ylab = 'Close Prices')



#1. Moving Average:

# Generate a sample time series data
set.seed(123)
ts_data <- ts(rnorm(100), start = 1)

# Calculate the 5-period moving average
ma <- filter(ts_data, rep(1/5, 5), sides = 2)

# Plot the original data and moving average
plot(ts_data, col = "blue", type = "l", lwd = 2, main = "Moving Average Example")
lines(ma, col = "red", lwd = 2)
legend("topright", legend = c("Original Data", "5-Period Moving Average"), col = c("blue", "red"), lwd = 2)

#2. Auto Regression (AR):
# Generate a sample time series data
set.seed(123)
ts_data <- ts(arima.sim(model = list(ar = 0.7), n = 100))

# Fit an AR(1) model
ar_model <- ar(ts_data, order.max = 1)

# Plot the original data and AR(1) model
plot(ts_data, col = "blue", type = "l", lwd = 2, main = "Auto Regression (AR) Example")
lines(predict(ar_model)$pred, col = "red", lwd = 2)
legend("topright", legend = c("Original Data", "AR(1) Model"), col = c("blue", "red"), lwd = 2)


#3. ARIMA Model:
# Generate a sample time series data
# Generate a sample time series data
set.seed(123)
ts_data <- arima.sim(model = list(ar = 0.7, ma = -0.5), n = 100)

# Fit an ARIMA(1,1,1) model
arima_model <- arima(ts_data, order = c(1, 1, 1))

# Plot the original data and ARIMA(1,1,1) model
plot(ts_data, col = "blue", type = "l", lwd = 2, main = "ARIMA Model Example")
lines(fitted(arima_model), col = "red", lwd = 2)
legend("topright", legend = c("Original Data", "ARIMA(1,1,1) Model"), col = c("blue", "red"), lwd = 2)

#4. Time Series Analysis using Stock Data:
# Install necessary packages
install.packages("quantmod")
library(quantmod)

# Get stock data (e.g., Apple Inc.)
getSymbols("AAPL", src = "yahoo", from = "2022-01-01", to = Sys.Date())

# Plot closing prices
plot(Cl(AAPL), type = "l", col = "blue", lwd = 2, main = "Stock Data - Closing Prices")


#5. Time Series Analysis using Weather Temperature Data:
  
# Install necessary packages
install.packages("datasets")
library(datasets)

# Access the AirPassengers dataset
data("AirPassengers")

# Plot the time series of monthly air passenger counts
plot(AirPassengers, type = "l", col = "blue", lwd = 2, main = "Air Passenger Counts over Time")

