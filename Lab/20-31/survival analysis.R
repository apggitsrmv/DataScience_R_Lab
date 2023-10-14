#Survival analysis deals with predicting the time when a specific event is going to occur. 
#It is also known as failure time analysis or analysis of time to death. 
#For example predicting the number of days a person with cancer will survive or predicting 
#the time when a mechanical system is going to fail.

#The R package named survival is used to carry out survival analysis. 
#This package contains the function Surv() which takes the input data as a R formula and
#creates a survival object among the chosen variables for analysis.
#Then we use the function survfit() to create a plot for the analysis.

#Install Package
install.packages("survival")
#Syntax
#The basic syntax for creating survival analysis in R is −

#Surv(time,event)
#survfit(formula)
#Following is the description of the parameters used −

#time is the follow up time until the event occurs.

#event indicates the status of occurrence of the expected event.

#formula is the relationship between the predictor variables.

#Example
#We will consider the data set named "pbc" present in the survival packages installed above. It describes the survival data points about people affected with primary biliary cirrhosis (PBC) of the liver. Among the many columns present in the data set we are primarily concerned with the fields "time" and "status". Time represents the number of days between registration of the patient and earlier of the event between the patient receiving a liver transplant or death of the patient.

# Load the library.
library("survival")

# Print first few rows.
print(head(pbc))

#Applying Surv() and survfit() Function
#Now we proceed to apply the Surv() function to the above data set and create a plot that will show the trend.

# Load the library.
library("survival")

# Create the survival object. 
survfit(Surv(pbc$time,pbc$status == 2)~1)

# Give the chart file a name.
#png(file = "survival.png")

# Plot the graph. 
plot(survfit(Surv(pbc$time,pbc$status == 2)~1))

# Save the file.
#dev.off()

#The trend in the above graph helps us predicting the probability of
#survival at the end of a certain number of days.

