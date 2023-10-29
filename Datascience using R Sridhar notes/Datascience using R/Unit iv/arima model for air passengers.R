# Complete ARIMA model for Air passengers
#http://rstudio-pubs-static.s3.amazonaws.com/311446_08b00d63cc794e158b1f4763eb70d43a.html
#Time Series Analysis and Modeling with the Air Passengers Dataset
#Synopsis
#This objective of this analysis and modelling is to review time series theory and experiment with R packages.

#We will be following an ARIMA modeling procedure of the AirPassengers dataset as follows:
#  1. Perform exploratory data analysis
#2. Decomposition of data
#3. Test the stationarity
#4. Fit a model used an automated algorithm
#5. Calculate forecasts
library(ggfortify)
library(tseries)
library(forecast)

data(AirPassengers)
head(AirPassengers)
print(AirPassengers)
AP <- AirPassengers
# Take a look at the class of the dataset AirPassengers
class(AP)

#The AirPassenger dataset in R provides monthly totals of a US airline passengers, 
#from 1949 to 1960. This dataset is already of a time series class therefore 
#no further class or date manipulation is required.

#To perform exploratory analysis, let’s first review the data with summary
#statistics and plots in R.

# Take a look at the entries
AP

# Check for missing values
sum(is.na(AP))

# Check the frequency of the time series
frequency(AP)

# Check the cycle of the time series
cycle(AP)

# Review the table summary
summary(AP)

# Plot the raw data using the base plot function
plot(AP,xlab="Date", ylab = "Passenger numbers (1000's)",main="Air Passenger numbers from 1949 to 1961")


#As an alternative to the base plot function, so we can also use the extension ggfortify 
#R package from the ggplot2 package, to plot directly from a time series. 
#The benefits are not having to convert to a dataframe as required with ggplot2, 
#but still having access to the layering grammar of graphics.
library(ggfortify)
autoplot(AP) + labs(x ="Date", y = "Passenger numbers (1000's)", title="Air Passengers from 1949 to 1961")

#Let’s use the boxplot function to see any seasonal effects.

boxplot(AP~cycle(AP),xlab="Date", ylab = "Passenger Numbers (1000's)" ,main ="Monthly Air Passengers Boxplot from 1949 to 1961")

#From these exploratory plots, we can make some initial inferences:
  
# 1. The passenger numbers increase over time with each year which may be 
# indicative of an increasing linear trend, perhaps due to increasing demand for flight 
#  travel and commercialisation of airlines in that time period.
#2. In the boxplot there are more passengers travelling in months 6 to 9 
#with higher means and higher variances than the other months, 
#indicating seasonality with a apparent cycle of 12 months.
#The rationale for this could be more people taking holidays and 
#fly over the summer months in the US.
#3. AirPassengers appears to be multiplicative time series as the passenger numbers
#increase, it appears so does the pattern of seasonality.
#4. There do not appear to be any outliers and there are no missing values. 
#Therefore no data cleaning is required.

#Part 2: TIME SERIES DECOMPOSITION
#We will decompose the time series for estimates of trend, seasonal, and 
#random components using moving average method.

#The multiplicative model is:
  
#  Y[t]=T[t]∗S[t]∗e[t]

#where

#Y(t) is the number of passengers at time t,
#T(t) is the trend component at time t,
#S(t) is the seasonal component at time t,
#e(t) is the random error component at time t.
#With this model, we will use the decompose function in R. Continuing to use ggfortify 
#for plots, in one line, autoplot these decomposed components to further analyse the data.

decomposeAP <- decompose(AP,"multiplicative")
autoplot(decomposeAP)

decomposeAP<-decompose(AP,"additive")
autoplot(decomposeAP)
#In these decomposed plots we can again see the trend and seasonality as inferred previously, 
#but we can also observe the estimation of the random component depicted under the “remainder”.


#Part 3: TEST STATIONARITY OF THE TIME SERIES
#A stationary time series has the conditions that the mean,
#variance and covariance are not functions of time. In order to fit arima models, 
#the time series is required to be stationary. 
#We will use two methods to test the stationarity.

#1. Test stationarity of the time series (ADF)

#In order to test the stationarity of the time series, let’s run the Augmented
#Dickey-Fuller Test using the adf.test function from the tseries R package.

#First set the hypothesis test:
  
#  The null hypothesis H0 : that the time series is non stationary
#The alternative hypothesis HA : that the time series is stationary

adf.test(AP)

#As a rule of thumb, where the p-value is less than 5%, we strong evidence against
#the null hypothesis, so we reject the null hypothesis. As per the test results above, 
#the p-value is 0.01 which is <0.05 therefore we reject the null in favour of the
#alternative hypothesis that the time series is stationary.


#2. Test stationarity of the time series (Autocorrelation)

#Another way to test for stationarity is to use autocorrelation. We will use autocorrelation 
#function (acf) in from the base stats R package. This function plots the correlation 
#between a series and its lags ie previous observations with a 95% confidence interval in blue. 
#If the autocorrelation crosses the dashed blue line, it means that specific lag is significantly
#correlated with current series.

autoplot(acf(AP,plot=FALSE))+ labs(title="Correlogram of Air Passengers from 1949 to 1961")

#The maximum at lag 1 or 12 months, indicates a positive relationship with the 12 month cycle.

#Since we have already created the decomposeAP list object with a random component, 
#we can plot the acf of the decomposeAP$random.

# Review random time series for any missing values
decomposeAP$random
# Autoplot the random time series from 7:138 which exclude the NA values
autoplot(acf(decomposeAP$random[7:138],plot=FALSE))+ labs(title="Correlogram of Air Passengers Random Component from 1949 to 1961") 

#We can see that the acf of the residuals is centered around 0.

#Part 4: FIT A TIME SERIES MODEL
#1. Linear Model

#Since there is an upwards trend we will look at a linear model first for comparison. 
#We plot AirPassengers raw dataset with a blue linear model.

library(ggplot2)
autoplot(AP) + geom_smooth(method="lm",se=F)+ labs(x ="Date", y = "Passenger numbers (1000's)", title="Air Passengers from 1949 to 1961") 

#This may not be the best model to fit as it doesn’t capture the seasonality and 
#multiplicative effects over time.

#2. ARIMA Model

#Use the auto.arima function from the forecast R package to fit the best model and 
#coefficients, given the default parameters including seasonality as TRUE. Note we have
#used the ARIMA modeling procedure as referenced

arimaAP <- auto.arima(AP)
arimaAP


#The ARIMA(2,1,1)(0,1,0)[12] model parameters are lag 1 differencing (d), 
#an autoregressive term of second lag (p) and a moving average model of order 1 (q). 
#Then the seasonal model has an autoregressive term of first lag (D) at model period 12 units, 
#in this case months.

#The ARIMA fitted model is:
  
#  Y^=0.5960Yt−2+0.2143Yt−12−0.9819et−1+E

#where E is some error.

#The ggtsdiag function from ggfortify R package performs model diagnostics of 
#the residuals and the acf. will include a autocovariance plot.

ggtsdiag(arimaAP)

#Part 5: CALCULATE FORECASTS
#Finally we can plot a forecast of the time series using the forecast function, 
#again from the forecast R package, with a 95% confidence interval where h is the forecast
#horizon periods in months.

forecastAP <- forecast(arimaAP, level = c(95), h = 36)
autoplot(forecastAP)

#To summarize, this has been an exercise in ARIMA modeling and using time series R packages
#ggfortify, tseries and forecast. 
#It is a good basis to move on to more complicated time series datasets,
#models and comparisons in R.

#Another way of forecasting airpassenger data
A <- arima(AirPassengers, order = c(2,1,1),seasonal=c(0,1,0))
library(forecast)
forecast <- forecast(A, h = 30) # predict 30 years into the future
plot(forecast)


