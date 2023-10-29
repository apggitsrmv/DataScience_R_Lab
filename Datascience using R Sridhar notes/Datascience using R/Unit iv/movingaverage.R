#“Moving averages is a smoothing approach that averages values from a window of consecutive
#time periods, thereby generating a series of averages. The moving average approaches 
#primarily differ based on the number of values averaged, how the average is computed, 
#and how many times averaging is performed”
library(TTR)
x <- c(3,5,7,3,4,2,6,4,7,2,1,9, 1, 10, 1,12)
y=x
By <- diff(y) # y_i - B y_i
print(By)
B2y<-diff(y,2)
B3y <- diff(y, 3) # y_i - B^3 y_i
message(paste0("y is: ", paste(y, collapse = ","), "\n",
               "By is: ", paste(By, collapse = ","), "\n",
               "By2 is: ",paste(B2y, collapse = ","), "\n",
               "B3y is: ", paste(B3y, collapse = ",")))
get_autocor <- function(x, lag) {
  x.left <- x[1:(length(x) - lag)]
  x.right <- x[(1+lag):(length(x))]
  print(x.left)
  print(x.right)
  autocor <- cor(x.left, x.right)
  return(autocor)
}
# correlation of measurements 1 time point apart (lag 1)
get_autocor(y, 1) 
# correlation of measurements 2 time points apart (lag 2)
get_autocor(y, 2)
get_autocor(y,3)

# correlation of measurements 2 time points apart (lag 2)
get_autocor(y, 4)
#Moving Average
print(x)
# 3 5 7 3 4 2 6 4
filter(x, rep(1/3,3))
#4.0 6.0 5.0 3.5 3.0 4.0 5.0 5.5 4.5 1.5 
#gives rolling mean of every 2 consecutive observations
runMean(x,2)

#Multiple regression models forecast a variable using a linear 
#combination of predictors, whereas autoregressive models use a combination 
#of past values of the variable. ... These concepts and techniques are used 
#by technical analysts to forecast security prices
#An autoregression model is a linear regression model that uses lagged variables
#as input variables
weatherdata <- read.table('E:/MCA/Unit iv/daily-min-temperatures.csv', sep=",", header= TRUE)
head(weatherdata)
plot(weatherdata$Temp)
plot(log(weatherdata$Temp))

par(mfrow = c(1,2))
acf(weatherdata$Temp) # conventional ACF
pacf(weatherdata$Temp) # pACF

#autocorrelation_data<-get_autocor(weatherdata$Temp,1)
#print(autocorrelation_data)
#plot(autocorrelation_data)



