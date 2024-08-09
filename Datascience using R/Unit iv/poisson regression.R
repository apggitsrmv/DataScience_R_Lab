#Poisson Regression involves regression models in which the response variable is in the form 
#of counts and not fractional numbers. 
#For example, the count of number of births or number of wins in a football match series. 
#Also the values of the response variables follow a Poisson distribution.

#The general mathematical equation for Poisson regression is −

#log(y) = a + b1x1 + b2x2 + bnxn.....
#Following is the description of the parameters used −

#y is the response variable.

#a and b are the numeric coefficients.


#x is the predictor variable.

#The function used to create the Poisson regression model is the glm() function.

#Syntax
#The basic syntax for glm() function in Poisson regression is −

#glm(formula,data,family)
#Following is the description of the parameters used in above functions −

#formula is the symbol presenting the relationship between the variables.

#data is the data set giving the values of these variables.

#family is R object to specify the details of the model. 
#It's value is 'Poisson' for Logistic Regression.


#Example
#Syntax
#The basic syntax for glm() function in Poisson regression is −
#glm(formula,data,family)
#We have the in-built data set "warpbreaks" which describes the effect
#of wool type (A or B) and 
#tension (low, medium or high) on the number of warp breaks per loom. 
#Let's consider "breaks" as the response variable which is a count of number of breaks.
#The wool "type" and "tension" are taken as predictor variables.

#Input Data

#Live Demo
input <- warpbreaks
print(head(input))

#Live Demo
output <-glm(formula = breaks ~ wool+tension, data = warpbreaks,
             family = poisson)
print(summary(output))


#In the summary we look for the p-value in the last column to be less than 0.05 to consider 
#impact of the predictor variable on the response variable. As seen the wooltype B having
#tension type M and H have impact on the count of breaks.



#To see which explanatory variables have an effect on response variable, 
#we will look at the p values. If the p is less than 0.05 then, the variable 
#has an effect on the response variable. In the summary above, we can see that all
#p values are less than 0.05, hence, both explanatory variables (wool and tension) 
#have significant effect on breaks. Notice how R output used *** at the end of each variable.
#The number of stars signifies significance.

#Before starting to interpret results, let’s check whether the model has over-dispersion 
#or under-dispersion. If the Residual Deviance is greater than the degrees of freedom,
#then over-dispersion exists. This means that the estimates are correct,
#but the standard errors (standard deviation) are wrong and unaccounted for by the model.

#The Null deviance shows how well the response variable is predicted by a model 
#that includes only the intercept (grand mean) whereas residual with the inclusion 
#of independent variables. Above, we can see that the addition of 3 (53-50 =3) 
#independent variables decreased the deviance to 210.39 from 297.37. 
#Greater difference in values means a bad fit.

#So, to have a more correct standard error we can use a quasi-poisson model:

output1 <-glm(formula = breaks ~ wool+tension, data = warpbreaks,
             family = quasipoisson(link="log"))
print(summary(output1))


mtcars
# Select some columns form mtcars.
input <- mtcars[,c("am","cyl","hp","wt")]

print(head(input))

#Create Regression Model
#We use the glm() function to create the regression model and get its summary for analysis.

input <- mtcars[,c("am","cyl","hp","wt")]

am.data = glm(formula = am ~ cyl + hp + wt, data = input, family = poisson)

print(summary(am.data))

