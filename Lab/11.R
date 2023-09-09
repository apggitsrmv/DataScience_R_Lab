#11.Create data files having name, age, DoJ, DoR, empcode,salary in
#json,xml,xls Merge all those files as a singlefile into xls file

install.packages("jsonlite")
#A) How will you merge these two tables to create a single table
# Load necessary libraries

library(XML)
library(readxl)
library(jsonlite)
getwd()
# Read data from JSON files
data <- read_json("employee1.json")
print(data)
data_jsonF <- read_json("employee1.json")
data_jsonS <- fromJSON("employee2.json")

# Read data from XML files
data_xmlF <- xmlToDataFrame("employee1.xml")
data_xmlS <- xmlToDataFrame("employee2.xml")

# Read data from Excel files
data_excelF <- read.xlsx("employees1.xlsx", sheetName = "Sheet1")
data_excelS <- read.xlsx("employees2.xlsx", sheetName = "Sheet1")

# Merge data from all sources into a single data frame
merged_data <- rbind(data_jsonF, data_jsonS, data_xmlF, data_xmlS, data_excelF, data_excelS)

# Save the merged data to a new Excel file
write.xlsx(merged_data, "merged_employees.xlsx", sheetName = "Sheet1", row.names = FALSE)

#B) Print those who are receiving salary greater than 5000
high_salary_employees <- merged_data[merged_data$salary > 5000, ]
print(high_salary_employees)

#C) Print those who are receiving salary inbetween 1000 and 10000
medium_salary_employees <- merged_data[merged_data$salary >= 1000 & merged_data$salary <= 10000, ]
print(medium_salary_employees)

#) Print those employees whose age is greater than 50
older_employees <- merged_data[merged_data$age > 50, ]
print(older_employees)

#E) Print those employees who have joined the company in less than one year

# Convert Date of Joining (DoJ) and Date of Resignation (DoR) to Date objects
merged_data$DoJ <- as.Date(merged_data$DoJ, format="%Y-%m-%d")
merged_data$DoR <- as.Date(merged_data$DoR, format="%Y-%m-%d")

# Calculate the duration of employment in days
merged_data$employment_duration <- as.numeric(difftime(merged_data$DoR, merged_data$DoJ, units = "days"))

# Filter employees who have worked for less than one year (365 days)
less_than_one_year_employees <- merged_data[merged_data$employment_duration < 365, ]
print(less_than_one_year_employees)
