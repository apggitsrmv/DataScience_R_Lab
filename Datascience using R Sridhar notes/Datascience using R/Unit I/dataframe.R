#A data frame is a table or a two-dimensional array-like structure in which each column 
#contains values of one variable and each row contains one set of values from each column.
#Following are the characteristics of a data frame.

#1.The column names should be non-empty.
#2.The row names should be unique.
#3.The data stored in a data frame can be of numeric, factor or character type.
#4.Each column should contain same number of data items.

#Create Data Frame
# Create the data frame.
name.age<-data.frame(name=c("Govind","Kumar","Sasi"), age=c(32,30,30))
print(name.age)
emp.data <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)
# Print the data frame.			
print(emp.data)
#-------------------------------------------------
#Get the Structure of the Data Frame
#The structure of the data frame can be seen by using str() function.

# Create the data frame.
emp.data <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)
# Get the structure of the data frame.
str(emp.data)
print(emp.data)
#---------------------------------------------------------

#Summary of Data in Data Frame
#The statistical summary and nature of the data can be obtained by applying summary() function.
#-------------------------------------------------------------
# Create the data frame.
emp.data <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)
# Print the summary.
print(summary(emp.data))
#----------------------------------------------------------
#Extract Data from Data Frame
#Extract specific column from a data frame using column name.

# Create the data frame.
emp.data <- data.frame(
  emp_id = c (110,111,112,113,115),
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25),
  
  start_date = as.Date(c("2012-01-01","2013-09-23","2014-11-15","2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)
# Extract Specific columns.
result <- data.frame(emp.data$emp_name,emp.data$salary)
print(result)
result1 <- data.frame(emp.data$emp_name,emp.data$salary,emp.data$emp_id)
print(result1)

# Create the data frame.
emp.data <- data.frame(
  emp_id = c (1:5),
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25),
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)
# Extract first two rows
result<-emp.data[1:2,1:2]
print(result)
result<-emp.data[,1:2]
print(result)
result<-emp.data[2:3,1:3]
print(result)

result<-emp.data[2,]
print(result)

result<-emp.data[,3]
print(result)
#Extract 3rd and 5th row with 2nd and 4th column

# Create the data frame.
emp.data <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)
result=emp.data
print(result)
# Extract 3rd and 5th row with 2nd and 4th column.
result <- emp.data[c(3,5),c(2,4)]
print(result)

#Expand Data Frame
#A data frame can be expanded by adding columns and rows.

#Add Column
#Just add the column vector using a new column name.

# Create the data frame.
emp.data <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)

# Add the "dept" coulmn.
emp.data$dept <- c("IT","Operations","IT","HR","Finance")
v <- emp.data
print(v)
str(v)
summary(v)
#Add Row
#To add more rows permanently to an existing data frame, we need to bring in the new rows 
#in the same structure as the existing data frame and use the rbind() function.

#In the example below we create a data frame with new rows and merge it with the existing data frame 
#to create the final data frame.

# Create the first data frame.
emp.data <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  dept = c("IT","Operations","IT","HR","Finance"),
  stringsAsFactors = FALSE
)

# Create the second data frame
emp.newdata <- 	data.frame(
  emp_id = c (6:8), 
  emp_name = c("Rasmi","Pranab","Tusar"),
  salary = c(578.0,722.5,632.8), 
  start_date = as.Date(c("2013-05-21","2013-07-30","2014-06-17")),
  dept = c("IT","Operations","Fianance"),
  stringsAsFactors = FALSE
)

# Bind the two data frames.
emp.finaldata <- rbind(emp.data,emp.newdata)
print(emp.finaldata)

# dataframe is set of vectors grouped together irrespective of datatype
# var<-data.frame(var1=c(),var2=c()......)
#str(var)-structure of data frame
#summar(var)- summary means min,1stquartile,median, mean, 3rd quartile, max-
#dataframe -columwise var$var1 or var$var2
# var[1:2,3:4],var[2,4],var[1:2,4]
# attach two dataframes using rbind into single dataframe
