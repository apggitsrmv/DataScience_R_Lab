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
#We will consider the data set named "pbc" present in the survival packages installed above.
#It describes the survival data points about people affected with primary biliary cirrhosis (PBC) 
#of the liver. Among the many columns present in the data set we are primarily concerned with the
#fields 
#"time" and "status". Time represents the number of days between registration of the patient 
#and earlier of the event between the patient receiving a liver transplant or death of the patient.

# Load the library.
library("survival")

# Print first few rows.
print(head(pbc))
print(pbc)
#Applying Surv() and survfit() Function
#Now we proceed to apply the Surv() function to the above data set and 
#create a plot that will show the trend.

# Load the library.
library("survival")

# Create the survival object. 
survfit(Surv(pbc$time,pbc$status == 2)~1)

# Give the chart file a name.
#png(file = "survival.png")

# Plot the graph. 
plot(survfit(Surv(pbc$time,pbc$status == 2)~1),xlab="Days",ylab="Survival Probability")

library(survminer)
ggsurvplot(
  fit = survfit(Surv(time, status) ~ 1, data = pbc), 
  xlab = "Days", 
  ylab = "Overall survival probability") 
# Save the file.
#dev.off()

#The trend in the above graph helps us predicting the probability of
#survival at the end of a certain number of days.

#Estimating x-year survival
#One quantity often of interest in a survival analysis is the probability
#of surviving beyond a certain number (x) of years.

#For example, to estimate the probability of survivng to 1 year, use summary
#with the times argument (Note the time variable in the lung data is actually in days, 
#so we need to use times = 365.25)
head(lung)
survfit(Surv(lung$time,lung$status == 2)~1)

plot(survfit(Surv(lung$time,lung$status == 2)~1),xlab="Days",ylab="Survival Probability")

library(survminer)
ggsurvplot(
  fit = survfit(Surv(time, status) ~ 1, data = lung), 
  xlab = "Days", 
  ylab = "Overall survival probability")



summary(survfit(Surv(time, status) ~ 1, data = lung), times = 0)
summary(survfit(Surv(time, status) ~ 1, data = lung), times = 365.25)

#x -year survival is often estimated incorrectly
#What happens if you use a “naive” estimate?
  
#  121 of the 228 patients died by 1 year so:
  
#  (1−121/228)×100=47%
# You get an incorrect estimate of the 1-year probability of survival
#when you ignore the fact that 42 patients were censored before 1 year.

#Recall the correct estimate of the 1-year probability of survival was 41%.

survdiff(Surv(time, status) ~ sex, data = lung)

coxph(Surv(time, status) ~ sex, data = lung)

