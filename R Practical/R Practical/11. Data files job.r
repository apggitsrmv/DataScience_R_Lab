install.packages("jsonlite")
install.packages("xlsx")
install.packages("XML")
#A) How will you merge these two tables to create a single table
# Load necessary libraries

library(XML)
library(xlsx)
library(jsonlite)
getwd()
# Read data from JSON files
#data <- read_json("employee1.json")
#print(data)
df1 <- fromJSON("employee1.json")
df2 <- fromJSON("employee2.json")


# Print the data frame
xml_fileF<- "employee1.xml"
xml_fileS<- "employee2.xml"
docF <- xmlParse(xml_fileF)
docS <- xmlParse(xml_fileS)

# Read data from XML files
df3 <- xmlToDataFrame(docF)
df4 <- xmlToDataFrame(docS)
#print(data_xmlF)
#print(data_xmlS)
# Read data from Excel files

library(xlsx)
df5 <- read.xlsx("employees1.xlsx", sheetName = "Sheet1")
df6 <- read.xlsx("employees2.xlsx", sheetName = "Sheet1")
print(df1)
print(df2)
print(df3)
print(df4)
print(df5)
print(df6)

# Concatenate data frames using rbind
merged_data <- rbind(df1, df2, df3,df4, df5, df6)
print(merged_data)

# Save the merged data to a new Excel file
write.xlsx(merged_data, "merged_employees2.xlsx", sheetName = "Sheet1", row.names = FALSE)

#B) Print those who are receiving salary greater than 5000
high_salary_employees <- merged_data[merged_data$Salary > 5000, ]
print(high_salary_employees)

#C) Print those who are receiving salary inbetween 1000 and 10000
medium_salary_employees <- merged_data[merged_data$Salary >= 1000 & merged_data$Salary <= 10000]
print(medium_salary_employees)

#) Print those employees whose age is greater than 50
older_employees <- merged_data[merged_data$Age > 30, ]
print(older_employees)

#E) Print those employees who have joined the company in less than one year

# Convert Date of Joining (Doj) and Date of Resignation (DoR) to Date objects
merged_data$Doj <- as.Date(merged_data$Doj, format="%Y-%m-%d")
merged_data$DoR <- as.Date(merged_data$DoR, format="%Y-%m-%d")
print(merged_data$Doj)
# Calculate the duration of employment in days
merged_data$employment_duration <- as.numeric(difftime(merged_data$DoR, merged_data$Doj, units = "days"))
print(merged_data$employment_duration)
# Filter employees who have worked for less than one year (365 days)
less_than_one_year_employees <- merged_data[merged_data$employment_duration < 365, ]
print(less_than_one_year_employees)