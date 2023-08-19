#XML is a file format which shares both the file format and the data on the World Wide Web, intranets, 
#and elsewhere using standard ASCII text. It stands for Extensible Markup Language (XML).
#Similar to HTML it contains markup tags. But unlike HTML where the markup tag describes structure of the page, 
#in xml the markup tags describe the meaning of the data contained into he file.

#You can read a xml file in R using the "XML" package. This package can be installed using following command.

#Reading XML File
#The xml file is read by R using the function xmlParse(). It is stored as a list in R.
setwd("e:/MCA/unit II/")
# Load the package required to read XML files.
library("XML")

# Also load the other required package.
library("methods")

# Give the input file name to the function.
result <- xmlParse(file = "input.xml")

# Print the result.
print(result)

# Convert the input xml file to a data frame.
xmldataframe <- xmlToDataFrame("input.xml")
print(xmldataframe)
summary(xmldataframe)

# Load the packages required to read XML files.
library("XML")
library("methods")

# Give the input file name to the function.
result <- xmlParse(file = "input.xml")

# Exract the root node form the xml file.
rootnode <- xmlRoot(result)
print(rootnode)
# Find number of nodes in the root.
rootsize <- xmlSize(rootnode)

# Print the result.
print(rootsize)

#Details of the First Node
#Let's look at the first record of the parsed file. It will give us an idea of the various 
#elements present in the top level node.

# Load the packages required to read XML files.
library("XML")
library("methods")

# Give the input file name to the function.
result <- xmlParse(file = "input.xml")

# Exract the root node form the xml file.
rootnode <- xmlRoot(result)

# Print the result.
print(rootnode[3])


# Exract the root node form the xml file.
rootnode <- xmlRoot(result)

# Get the first element of the first node.
print(rootnode[[1]][[2]])

# Get the fifth element of the first node.
print(rootnode[[1]][[4]])

# Get the second element of the third node.
print(rootnode[[3]][[2]])

#xml data file
#a=xmlparse() -> which reads xml file
#print(a)  all elments of xml file will be printed
#xlmtoDataFrame()-> which reads xml file
#xmlroot() extract of root note of xml file
#rootnode([[1]][[2]]) [[1]][[2]]