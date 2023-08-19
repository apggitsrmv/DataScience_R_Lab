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
input <- mtcars[,c("am","mpg","hp")]
print(head(input))

#ANCOVA Analysis
#We create a regression model taking "hp" as the predictor variable and "mpg" 
#as the response variable taking into account the interaction between "am" and "hp".

#Model with interaction between categorical variable and predictor variable

#Live Demo
# Get the dataset.
input <- mtcars

# Create the regression model.
result <- aov(mpg~hp*am,data = input)
print(summary(result))


#This result shows that both horse power and transmission type has significant effect on
#miles per gallon as the p value in both cases is less than 0.05. 
#But the interaction between these two variables is not significant as the p-value is more than 0.05.

#Model without interaction between categorical variable and predictor variable
#Live Demo
# Get the dataset.
input <- mtcars

# Create the regression model.
result <- aov(mpg~hp+am,data = input)
print(summary(result))


#This result shows that both horse power and transmission type has significant effect on miles per 
#gallon as the p value in both cases is less than 0.05.

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
#will depend in a similar manner on the horse power of the car in both auto and manual transmission mode.     

print(input)
result1 <- aov(mpg~hp*cyl,data = input)
result2 <- aov(mpg~hp+cyl,data = input)

# Compare the two models.
print(anova(result1,result2))
