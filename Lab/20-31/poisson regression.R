#Poisson Regression involves regression models in which the response variable is in the form of counts and not fractional numbers. For example, the count of number of births or number of wins in a football match series. Also the values of the response variables follow a Poisson distribution.

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

#family is R object to specify the details of the model. It's value is 'Poisson' for Logistic Regression.

#Example
#We have the in-built data set "warpbreaks" which describes the effect of wool type (A or B) and 
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
