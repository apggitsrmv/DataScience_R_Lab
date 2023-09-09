#JSON file stores data as text in human-readable format. Json stands for JavaScript Object Notation.
#R can read JSON files using the rjson package.

#Install rjson Package
#In the R console, you can issue the following command to install the rjson package.

install.packages("jsonlite")
#Input Data
#Create a JSON file by copying the below data into a text editor like notepad. 
#Save the file with a .json extension and choosing the file type as all files(*.*).

#Read the JSON File
#The JSON file is read by R using the function from JSON(). It is stored as a list in R.

# Load the package required to read JSON files.
library("jsonlite")

# Give the input file name to the function.
 data <- read_json("employees1.json")

# Print the result.
print(data)

#Convert JSON to a Data Frame
#We can convert the extracted data above to a R data frame for further analysis using the as.data.frame() 
#function.

# Load the package required to read JSON files.
library("jsonlite")

# Give the input file name to the function.
result <- fromJSON(file = "input.json")

# Convert JSON file to a data frame.
json_data_frame <- as.data.frame(result)

print(json_data_frame)

#fromJSON -> we will be able to read data from json file
#as.data.frame()-> json file

