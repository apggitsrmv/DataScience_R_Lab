#Multiple regression is an extension of linear regression into relationship between more than two variables.
#In simple linear relation we have one predictor and one response variable, but in multiple regression
#we have more than one predictor variable and one response variable.

#The general mathematical equation for multiple regression is −

#y = a + b1x1 + b2x2 +...bnxn
#Following is the description of the parameters used −

#y is the response variable.

#a, b1, b2...bn are the coefficients.

#x1, x2, ...xn are the predictor variables.

#We create the regression model using the lm() function in R. The model determines the value of
#the coefficients using the input data. Next we can predict the value of the response variable 
#for a given set of predictor variables using these coefficients.

#lm() Function
#This function creates the relationship model between the predictor and the response variable.

#Syntax
#The basic syntax for lm() function in multiple regression is −

#lm(y ~ x1+x2+x3...,data)
#Following is the description of the parameters used −

#formula is a symbol presenting the relation between the response variable and predictor variables.

#data is the vector on which the formula will be applied.

#Example
#Input Data
#Consider the data set "mtcars" available in the R environment. It gives a comparison between different car models in terms of mileage per gallon (mpg), cylinder displacement("disp"), horse power("hp"), weight of the car("wt") and some more parameters.

#The goal of the model is to establish the relationship between "mpg" as a response variable with "disp","hp" and "wt" as predictor variables. We create a subset of these variables from the mtcars data set for this purpose.

#Live Demo
mtcars
print(mtcars)
input <- mtcars[,c("mpg","disp","hp","wt")]
print(head(input))


#Create Relationship Model & get the Coefficients

input <- mtcars[,c("mpg","disp","hp","wt")]

# Create the relationship model.
model <- lm(mpg~disp+hp+wt, data = input)

# Show the model.
print(summary(model))

# Get the Intercept and coefficients as vector elements.
cat("# # # # The Coefficient Values # # # ","\n")

a <- coef(model)[1]
print(a)

Xdisp <- coef(model)[2]
Xhp <- coef(model)[3]
Xwt <- coef(model)[4]

print(Xdisp)
print(Xhp)
print(Xwt)

#Create Equation for Regression Model
#Based on the above intercept and coefficient values, we create the mathematical equation.

#Y = a+Xdisp.x1+Xhp.x2+Xwt.x3

print(summary(model))
paste("y=",a,"+",Xdisp,"*x1","+",Xhp,"*x2","+",Xwt,"*x3")


#Apply Equation for predicting New Values
#We can use the regression equation created above to predict the mileage when a new set of values for displacement, horse power and weight is provided.

#For a car with disp = 221, hp = 102 and wt = 2.91 the predicted mileage is −

#Y = 37.15+(-0.000937)*221+(-0.0311)*102+(-3.8008)*2.91 = 22.7104
disp=221
hp=102
wt=2.91
#print(37.10-0.0009*221-0.0311*102-3.8008*2.91)

a1 <- data.frame(disp,hp,wt)
result <-  predict(model,a1)
print(result)

x1<-c(2,3,4,5)
x2<-c(4,5,1,5)
x3<-c(3,4,7,5)
y<-c(2,7,5,4)

input<-list(c(y),c(x1),c(x2),c(x3))
print(input)

model<-lm(y~x1+x2+x3,data=input)
print(summary(model))

a <- coef(model)[1]
print(a)

x1 <- coef(model)[2]
x2 <- coef(model)[3]
x3 <- coef(model)[4]

paste("y=",a,"+",x1,"*x1","+",x2,"*x2","+",x3,"*x3")

a1 <- data.frame(x1 = 2,x2=4,x3=4)
result <-  predict(model,a1)
print(result)


setwd("e:/MCA/Unit iv")


data=read.csv("winequality-red.csv")
x1<-data$fixed.acidity
x2<-data$volatile.acidity
x3<-data$citric.acid
x4<-data$residual.sugar
x5<-data$free.sulfur.dioxide
x6<-data$total.sulfur.dioxide
x7<-data$density
x8<-data$pH
x9<-data$sulphates
x10<-data$chlorides
x11=data$alcohol
y<-data$quality

model=lm(y~x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11)
print(summary(model))
paste("y=",a,"+",x1,"*x1","+",x2,"*x2","+",x3,"*x3", "+",x4,"*x4")

#6.3	0.51	0.13	2.3	0.076	29	40	0.99574	3.42	0.75	11

a1 <- data.frame(x1=6.3,x2=0.51,x3=0.13,x4=2.3,x10=0.076,x5=29,x6=40,x7=0.99574,x8=3.42,x9=0.75,x11=11)
result <-  predict(model,a1)
print(result)



input <- data[,c("fixed.acidity","volatile.acidity","citric.acid","residual.sugar","quality")]

model <- lm(quality~fixed.acidity+volatile.acidity+citric.acid+residual.sugar, data = input)

