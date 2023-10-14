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
