#Chi-Square test is a statistical method to determine if two categorical variables 
#have a significant correlation between them. Both those variables should be from 
#same population and they should be categorical like − Yes/No, Male/Female, Red/Green etc.

#For example, we can build a data set with observations on people's ice-cream buying3
#pattern and try to correlate the gender of a person with the flavor of the ice-cream they prefer. 
#If a correlation is found we can plan for appropriate stock of flavors by knowing the number of 
#gender of people visiting.

#Syntax
#The function used for performing chi-Square test is chisq.test().

#The basic syntax for creating a chi-square test in R is −

#chisq.test(data)
#Following is the description of the parameters used −

#data is the data in form of a table containing the count value of the variables in the observation.

#Example
#We will take the Cars93 data in the "MASS" library which represents the sales of different
#models of car in the year 1993.

#Live Demo
library("MASS")
print(str(Cars93))

#The above result shows the dataset has many Factor variables which can be 
#considered as categorical variables. For our model we will consider the variables
#"AirBags" and "Type". Here we aim to find out any significant correlation between the
#types of car sold and the type of Air bags it has. If correlation is observed we can 
#estimate which types of cars can sell better with what types of air bags.

#Live Demo
# Load the library.
library("MASS")

# Create a data frame from the main data set.
#car.data <- data.frame(Cars93$AirBags, Cars93$Type)
car.data<-data.frame(Cars93$Manufacturer,Cars93$AirBags)
print(car.data)
# Create a table with the needed variables.
#car.data = table(Cars93$AirBags, Cars93$Type) 
car.data = table(Cars93$Manufacturer, Cars93$AirBags)
print(car.data)

# Perform the Chi-Square test.
print(chisq.test(car.data))

#cor.test(Cars93$AirBags,Cars93$Type)
#The result shows the p-value of less than 0.05 which indicates a string correlation.