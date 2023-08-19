#Statistical analysis in R is performed by using many in-built functions. Most of these functions are part of the R base package. These functions take R vector as an input along with the arguments and give the result.

#The functions we are discussing in this chapter are mean, median and mode.

#Mean
#It is calculated by taking the sum of the values and dividing with the number of values in a data series.

#The function mean() is used to calculate this in R.

#Syntax
#The basic syntax for calculating mean in R is −

#mean(x, trim = 0, na.rm = FALSE, ...)
#Following is the description of the parameters used −

#x is the input vector.

#trim is used to drop some observations from both end of the sorted vector.

#na.rm is used to remove the missing values from the input vector.


# Create a vector. 
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
mean(x)
# Find Mean.
result.mean <- mean(x)
print(result.mean)

#Applying Trim Option
#When trim parameter is supplied, the values in the vector get sorted and 
#then the required numbers of observations are dropped from calculating the mean.

#When trim = 0.3, 3 values from each end will be dropped from the calculations to find mean.

#In this case the sorted vector is (−21, −5, 2, 3, 4.2, 7, 8, 12, 18, 54) and the values removed from the vector for calculating mean are (−21,−5,2) from left and (12,18,54) from right.

# Create a vector.
x<-c(-21,-5,2,3,4.2,7,8,12,18,54)
mean(x)
mean1<-mean(x,trim=0.3)
print(mean1)
x<-c(3,4.2,7,8)
mean(x)

x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
x<-c(−21, −5, 2, 3, 4.2, 7, 8)
mean(x)
# Find Mean.
result.mean <-  mean(x,trim = 0.3)
print(result.mean)

#Applying NA Option
#If there are missing values, then the mean function returns NA.

#To drop the missing values from the calculation use na.rm = TRUE. which means remove the NA values.

#Live Demo
# Create a vector. 
x <- c(12,7,3,4.2,18,2,54,-21,8,-5,NA)
mean(x)
# Find mean.
result.mean <-  mean(x)
print(result.mean)

# Find mean dropping NA values.
result.mean <-  mean(x,na.rm = TRUE)
print(result.mean)


# Create the vector.
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
x<-c(-21,-5,2,3,4.2,7,8,12,18,54) #-even number of values
#4.2+7=11.2/2= 5.6
x<-c(-21,-5,2,3,4.2,7,8,12,18,54,78)#-odd number of values
# Find the median.
median.result <- median(x)
print(median.result)

#Mode
#The mode is the value that has highest number of occurrences in a set of data. 
#Unike mean and median, mode can have both numeric and character data.

#R does not have a standard in-built function to calculate mode.
#So we create a user function to calculate mode of a data set in R. 
#This function takes the vector as input and gives the mode value as output.

#Example

# Create the function.
getmode <- function(v) {
  uniqv <- unique(v)
  print(unique(v))
  print(tabulate(match(v, uniqv)))
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
mode(v)
# Create the vector with numbers.
v <- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)
unique(v)
tabulate(match(v,unique(v)))
# Calculate the mode using the user function.
result <- getmode(v)
print(result)

# Create the vector with characters.
charv <- c("o","it","the","it","it")
#mode(charv)
print(charv)
print(unique(charv))
print(tabulate(match(charv, unique(charv))))
# Calculate the mode using the user function.
result <- getmode(charv)
print(result)

# Mean is average of all numbers which could work for numeric data
# Median is an average of numbers in such a way that 
# if it an odd number of numbers then middle value is considered
# if it is an even number of numbers then nth + (n+1)th/2 corresponding element will be considered
# mode is higest occurances of numbers among set of numbers will be considered, it could work for numeric 
# as well as character data.
