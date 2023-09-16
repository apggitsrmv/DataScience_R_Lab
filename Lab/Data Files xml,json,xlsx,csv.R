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

# Load the XML package
#library(XML)

# Specify the path to the XML file
#xml_file <- "employee2.xml"

# Parse the XML file
#doc <- xmlParse(xml_file)

# Extract the data into a data frame
#data <- xmlToDataFrame(doc)

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
#print(data_excelF)

# Check and rename columns if needed in df1
if (!all(names(df1) == c("EmployeeName", "Age", "Salary", "Department"))) {
  colnames(df1) <- c("EmployeeName", "Age", "Salary", "Department")
}

# Check and rename columns if needed in df2
if (!all(names(df2) == c("EmployeeName", "Age", "Salary", "Department"))) {
  colnames(df2) <- c("EmployeeName", "Age", "Salary", "Department")
}

# Check and rename columns if needed in df3
if (!all(names(df3) == c("EmployeeName", "Age", "Salary", "Department"))) {
  colnames(df3) <- c("EmployeeName", "Age", "Salary", "Department")
}
# Check and rename columns if needed in df4
if (!all(names(df5) == c("EmployeeName", "Age", "Salary", "Department"))) {
  colnames(df4) <- c("EmployeeName", "Age", "Salary", "Department")
}

# Check and rename columns if needed in df5
if (!all(names(df5) == c("EmployeeName", "Age", "Salary", "Department"))) {
  colnames(df5) <- c("EmployeeName", "Age", "Salary", "Department")
}

# Check and rename columns if needed in df6
if (!all(names(df6) == c("EmployeeName", "Age", "Salary", "Department"))) {
  colnames(df6) <- c("EmployeeName", "Age", "Salary", "Department")
}
# Concatenate data frames using rbind
merged_data <- rbind(df1,df2, df3,df4, df5, df6)



# Merge data from all sources into a single data frame
#merged_data <- rbind(data_jsonF, data_jsonS, data_xmlF, data_xmlS, data_excelF, data_excelS)
print(merged_data)