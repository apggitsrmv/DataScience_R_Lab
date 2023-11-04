# Apply the lm() function.
x<-c(1,2,3,4,5)
y<-c(2,4,6,8,10)

#Create Relationship Model & get the Coefficients
relation <- lm(y~x)
print(relation)
print(summary(relation))

plot(x,y,col = "blue",main = "Month and Trips Regression",
     abline(lm(y~x)),cex = 1.9,pch = 20,xlab = "Month",ylab = "Trips in Kms")

a <- data.frame(x =30)
result <-  predict(relation,a)
print(result)

relation<-lm(x~y)
print(relation)
print(summary(relation))
plot(y,x,col = "blue",main = "Month and Trips Regression",
     abline(lm(x~y)),cex = 1.9,pch = 20,xlab = "Month",ylab = "Trips in Kms")

x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131) 
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

# Apply the lm() function.
relation <- lm(y~x)
print(relation)
plot(x,y,col = "blue",main = "Height and weight Regression",
     abline(lm(y~x)),cex = 1.9,pch = 20,xlab = "Height",ylab = "Weight")


#read data from csv files

data=read.csv("winequality-red.csv")
x<-data$fixed.acidity
y<-data$residual.sugar
relation <- lm(y~x)
print(relation)
plot(x,y,col = "blue",main = "Acidity & Quality",
     abline(lm(y~x)),cex = 1.9,pch = 20,xlab = "Acidity",ylab = "Quality")
