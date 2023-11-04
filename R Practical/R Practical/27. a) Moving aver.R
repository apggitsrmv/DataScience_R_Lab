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
  return(autocor)}
get_autocor(y, 1)
get_autocor(y, 2)
get_autocor(y,3)
get_autocor(y, 4)

#Moving Average
print(x)
filter(x, rep(1/3,3))
runMean(x,2)

weatherdata <- read.table('C:/Users/MCA-29/R Practical/daily-min-temperatures.csv', sep=",", header= TRUE)
head(weatherdata)
plot(weatherdata$Temp)
plot(log(weatherdata$Temp))
par(mfrow = c(1,2))
acf(weatherdata$Temp)
pacf(weatherdata$Temp)
