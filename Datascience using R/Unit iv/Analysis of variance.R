#We use Regression analysis to create models which describe the effect of variation
#in predictor variables on the response variable. Sometimes, if we have a categorical variable
#with values like Yes/No or Male/Female etc. The simple regression analysis gives multiple results 
#for each value of the categorical variable. In such scenario, we can study the effect of the 
#categorical variable by using it along with the predictor variable and comparing the regression lines
#for each level of the categorical variable. 
#Such an analysis is termed as Analysis of Covariance also called as ANCOVA.

#Example
#Consider the R built in data set mtcars. In it we observer that the field "am"
#represents the type of transmission (auto or manual). 
#It is a categorical variable with values 0 and 1. 
#The miles per gallon value(mpg) of a car can also depend on it besides the value of horse power("hp").

#We study the effect of the value of "am" on the regression between "mpg" and "hp". 
#It is done by using the aov() function followed by the anova() function to compare the multiple regressions.

#Input Data
#Create a data frame containing the fields "mpg", "hp" and "am" from the data set mtcars. 
#Here we take "mpg" as the response variable, "hp" as the predictor variable and "am" as the 
#categorical variable.

#Live Demo
mtcars
input <- mtcars[,c("am","mpg","hp")]
print(head(input))

#ANCOVA Analysis
#We create a regression model taking "hp" as the predictor variable and "mpg" 
#as the response variable taking into account the interaction between "am" and "hp".

#Model without interaction between categorical variable and predictor variable
#Live Demo
# Get the dataset.
input <- mtcars

# Create the regression model.
result <- aov(mpg~hp+am,data = input)
print(summary(result))


#This result shows that both horse power and transmission type has significant effect 
#on miles per gallon as the p value in both cases is less than 0.05.



#Model with interaction between categorical variable and predictor variable

#Live Demo
# Get the dataset.
input <- mtcars

# Create the regression model.
result <- aov(mpg~hp*am,data = input)
print(summary(result))


#This result shows that both horse power and transmission type has significant effect on
#miles per gallon as the p value in both cases is less than 0.05. 
#But the interaction between these two variables is not significant as the p-value 
#is more than 0.05.


#Comparing Two Models
#Now we can compare the two models to conclude if the interaction of the variables
#is truly in-significant. For this we use the anova() function.

#Live Demo
# Get the dataset.
input <- mtcars

# Create the regression models.
result1 <- aov(mpg~hp*am,data = input)
result2 <- aov(mpg~hp+am,data = input)

# Compare the two models.
print(anova(result1,result2))
 
#As the p-value is greater than 0.05 we conclude that the interaction 
#between horse power and transmission type is not significant. So the mileage per gallon 
#will depend in a similar manner on the horse power of the car in both auto and 
#manual transmission mode.     

print(input)
result1 <- aov(mpg~hp*cyl,data = input)
result2 <- aov(mpg~hp+cyl,data = input)

# Compare the two models.
print(anova(result1,result2))

#As the p-value is greater than 0.05 we conclude that the interaction 
#between horse power and cyclinder  is  significant. So the mileage per gallon 
#will depend in a similar manner on the horse power of the car in both auto and 
#manual transmission mode.     



overcast<-c(86,65,90,75,10)
rainy<-c(96,80,70,80,81)
sunny<-c(85,95,95,70,70)
data1<-data.frame(overcast,rainy,sunny)
print(data1)
result1<-aov(overcast~rainy+sunny,data=data1)
print(result1)
print(summary(result1))
t<-anova(overcast,rainy,sunny)
print(t)

x1<-c(8,10,7,14,11)
x2<-c(7,5,10,9,9)
x3<-c(12,9,13,12,14)
sumx1=sum(x1)
sumx2=sum(x2)
sumx3=sum(x3)
sqrx1=x1*x1
sumsqrx1=sum(sqrx1)
sqrx2=x2*x2
sumsqrx2=sum(sqrx2)
sqrx3=x3*x3
sumsqrx3=sum(sqrx3)
print(paste(sumx1,sumx2,sumx3,sumsqrx1,sumsqrx2,sumsqrx3))
sumofall=sumx1+sumx2+sumx3
corrfactor=sumofall*sumofall/15
TSS=sumsqrx1+sumsqrx2+sumsqrx3-corrfactor
bss=((sumx1*sumx1+sumx2*sumx2+sumx3*sumx3)/5)-corrfactor
#print(paste(sumofall,corrfactor,TSS,bss))
wss=TSS-bss
k=3
n=15
#print(paste(sumofall,corrfactor,TSS,bss,wss))
msc=bss/(k-1)
mse=wss/(n-k)
print(paste(sumofall,corrfactor,TSS,bss,msc,mse))
ftest=msc/mse
print(ftest)


data1<-data.frame(x1,x2,x3)
print(data1)
result1<-aov(x1~x2,data=data1)
print(result1)
print(summary(result1))
result1<-aov(x1~x2+x3,data=data1)
print(result1)
print(summary(result1))

t1<-oneway.test(x1~x2+x3,data=data1)
print(t1)

result1<-aov(x1~x2*x3,data=data1)
print(result1)
print(summary(result1))
