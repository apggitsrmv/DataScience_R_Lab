#In R, we can read data from files stored outside the R environment. We can also write data into files 
#which will 
#be stored and accessed by the operating system. R can read and write into various file formats 
#like csv, excel, 
#xml etc.

#In this chapter we will learn to read data from a csv file and then write data into a csv file. 
#The file should be present in current working directory so that R can read it. 
#Of course we can also set our own directory 
#and read files from there.

#Getting and Setting the Working Directory
#You can check which directory the R workspace is pointing to using the getwd() function. 
#You can also set a new working directory using setwd()function.

#Get and print current working directory.
print(getwd())

# Set current working directory.
setwd("E:/MCA/unit II")

# Get and print current working directory.
print(getwd())

#----------------------------------------
#Input as CSV File
#The csv file is a text file in which the values in the columns are separated by a comma. 
#Let's consider the following data present in the file named input.csv.

#You can create this file using windows notepad by copying and pasting this data. 
#Save the file as input.csv using the save As All files(*.*) option in notepad
#---------------------------------------

#Reading a CSV File
#Following is a simple example of read.csv() function to read a CSV file 
#available in your current working directory −

data <- read.csv("input.csv")
print(data)

#Analyzing the CSV File
#By default the read.csv() function gives the output as a data frame. 
#This can be easily checked as follows. Also we can check the number of columns and rows.

data <- read.csv("input.csv")

print(is.data.frame(data))
print(ncol(data))
print(nrow(data))
summary(data)

#Once we read data in a data frame, we can apply all the functions applicable to data frames 
#as explained in subsequent section.

#Get the maximum salary
# Create a data frame.
data <- read.csv("input.csv")

print(data)
print(data$salary)
# Get the max salary from data frame.
sal <- max(data$salary)
print(sal)

sal<-min(data$salary)
print(sal)
#------------------------------------------------------
#Get the details of the person with max salary
#---------------------------------------------------
#We can fetch rows meeting specific filter criteria similar to a SQL where clause.

# Create a data frame.
data <- read.csv("input.csv")

# Get the max salary from data frame.
sal <- max(data$salary)
sal <-mean(data$salary)
print(sal)
sal<-median(data$salary)
print(sal)

# Get the person detail having max salary.
retval <- subset(data, salary == max(salary))
print(retval)

retval<-subset(data, salary==min(salary))
print(retval)

retval<-subset(data,salary>600)
print(retval)

retval<-subset(data,salary<600)
print(retval)

retval<-subset(data,salary>500 & salary<700)
print(retval)

retval<-subset(data,salary>600 & salary<800)
print(retval)
#----------------------------------------------------
#Get all the people working in IT department
#----------------------------------------------------
# Create a data frame.
data <- read.csv("input.csv")

retval <- subset( data, dept == "IT")
print(retval)

retval<-subset(data,salary>600 & dept=="IT")
print(retval)

gender_data<-read.csv("gender.csv")
print(gender_data)

retval<-subset(gender_data,Gender=="Boys")
print(retval)

retval<-subset(gender_data,Gender=="Boys" & Agegroups=="12years")
print(retval)
#-----------------------------------------------------------------

#Get the persons in IT department whose salary is greater than 600
#-----------------------------------------------------------------
# Create a data frame.
data <- read.csv("input.csv")

info <- subset(data, salary > 600 & dept == "IT")
print(info)
#--------------------------------------------------
#Get the people who joined on or after 2014
#---------------------------------------------------
# Create a data frame.
data <- read.csv("input.csv")

retval <- subset(data, as.Date(start_date) > as.Date("2014-01-01") & salary>500)
print(retval)
#-------------------------------------------------------------------

#Writing into a CSV File
#-----------------------------------------------
#R can create csv file form existing data frame. 
#The write.csv() function is used to create the csv file. This file gets created in the working directory.
dates <- c("20nov1980", "20nov1991", "20nov1993", "10sep1993")
dt <- as.Date(dates, "%d%b%Y")
dt
retval <- data$start_date
print(retval)
retdate<-as.Date(data$start_date)   
#"%d%b%y")
print(retdate)
# Create a data frame.
data <- read.csv("input.csv")
print(data)
print(subset(data,as.Date(start_date,"%d%b%Y")))
print(subset(data, as.Date(start_date,"%d%b%Y")))
retval <- subset(data, as.Date(start_date,"%d%b%Y") > as.Date("2012-01-01"))
print(retval)
# Write filtered data into a new file.
write.csv(retval,"output.csv")
newdata <- read.csv("output.csv")
print(newdata)

#reshaping
#Cbind, data.frame, rbind<-dataframes, cbind, data.frame&cbind, merge,pima.te,pima.tr,bp&bmi
# read.csv(),max,min,mean,median, query condition->subset(), write.csv()