setwd("e:/MCA/Unit II")
library("rjson")

# Give the input file name to the function.
result <- fromJSON(file = "input1.json")
print(result)
# Convert JSON file to a data frame.
json_data_frame <- as.data.frame(result)
print(json_data_frame)


# Convert xml file to a data frame
library(XML)
xmldataframe <- xmlToDataFrame("input1.xml")
print(xmldataframe)

#combine JSON and XML Data frame
combined_dataframe=data.frame(json_data_frame,xmldataframe)
print(combined_dataframe)

combined_dataframe1=combined_dataframe[,-3]
print(combined_dataframe1)

write.csv(combined_dataframe1,"Combined.csv")

data <- read.csv("Combined.csv")
print(data)

retval<-subset(data,Name=="Gary")
print(retval)

retval<-subset(data,DEPT=="IT")
print(retval)

retval<-subset(data,DEPT=="IT" & SALARY>600)
print(retval)

retval <- subset( data, emp_name == "Gary")
print(retval)




