#Microsoft Excel is the most widely used spreadsheet program which stores data in the .xls or .xlsx format. 
#R can read directly from these files using some excel specific packages. Few such packages are 
#- XLConnect, xlsx, gdata etc. We will be using xlsx package. R can also write into excel file using this package.

#Install xlsx Package
#You can use the following command in the R console to install the "xlsx" package. 
#It may ask to install some additional packages on which this package is dependent. 
#Follow the same command with required package name to install the additional packages.

#Verify and Load the "xlsx" Package
#Use the following command to verify and load the "xlsx" package.

# Verify the package is installed.
any(grepl("xlsx",installed.packages()))

# Load the library into R workspace.
library("xlsx")

getwd()
setwd("E:/MCA/unit II")
#Reading the Excel File
#The input.xlsx is read by using the read.xlsx() function as shown below. 
#The result is stored as a data frame in the R environment.

# Read the first worksheet in the file input.xlsx.
data <- read.xlsx("input.xlsx", sheetIndex = 2)
print(data)