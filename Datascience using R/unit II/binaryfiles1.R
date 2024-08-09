# R program to illustrate  
# working with binary file 

setwd("e:/MCA/unit II/")
# Creating a data frame 
df = data.frame( 
  "ID" = c(1, 2, 3, 4), 
  "Name" = c("Tony", "Thor", "Loki", "Hulk"), 
  "Age" = c(20, 34, 24, 40), 
  "Pin" = c(756083, 756001, 751003, 110011) 
) 

# Creating a connection object 
# to write the binary file using mode "wb" 
con = file("myfile.dat", "wb") 

# Write the column names of the data frame 
# to the connection object 
writeBin(colnames(df), con) 

# Write the records in each of the columns to the file 
writeBin(c(df$ID, df$Name, df$Age, df$Pin), con) 

# Close the connection object 
close(con) 

# R program to illustrate  
# working with binary file 

# Creating a connection object  
# to read the file in binary mode using "rb". 
con = file("myfile.dat", "rb") 

# Read the column names 
# n = 4 as here 4 column 
colname = readBin(con, character(),  n = 4) 
colname
# Read column values 
# n = 20 as here 16 values and 4 column names 
con = file("myfile.dat", "rb") 
bindata = readBin(con, integer(), n = 20) 
bindata
# Read the ID values 
# as first 1:4 byte for col name 
# then values of ID col is within 5 to 8 
ID = bindata[5:8] 
ID
# Similarly 9 to 12 byte for values of name column 
Name = bindata[9:12] 

# 13 to 16 byte for values of the age column 
Age = bindata[13:16] 

# 17 to 20 byte for values of Pincode column 
PinCode = bindata[17:20] 

# Combining all the values and make it a data frame 
finaldata = cbind(ID, Name, Age, PinCode) 
colnames(finaldata)= colname 
print(finaldata) 

newdata = file("https://stats.idre.ucla.edu/stat/r/faq/bindata.dat", "rb")

varnames = readBin(newdata, character(), n=3)
varnames

datavals = readBin(newdata, integer(), size = 4, n = 600, endian = "little")
readvals = datavals[1:200]
writevals = datavals[201:400]
mathvals = datavals[401:600]

rdata = cbind(readvals, writevals, mathvals)
colnames(rdata) = varnames
rdata[1:5,]

to.read = file("https://stats.idre.ucla.edu/stat/r/faq/bintest.dat", "rb")

readBin(to.read, integer(), endian = "little")

readBin(to.read, integer(), n = 4, endian = "little")

readBin(to.read, integer(), n = 2, size = 4, endian = "little")
