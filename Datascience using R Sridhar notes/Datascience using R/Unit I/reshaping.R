#Data Reshaping in R is about changing the way data is organized into rows and columns. 
#Most of the time data processing in R is done by taking the input data as a data frame. 
#It is easy to extract data from the rows and columns of a data frame but there are situations
#when we need the data frame in a format that is different from format in which we received it. 
#R has many functions to split, merge and change the rows to columns and vice-versa in a data frame.

#Joining Columns and Rows in a Data Frame
#We can join multiple vectors to create a data frame using the cbind()function.
#Also we can merge two data frames using rbind() function.

# Create vector objects.
city <- c("Tampa","Seattle","Hartford","Denver")
state <- c("FL","WA","CT","CO")
zipcode <- c(33602,98104,06161,80294)

# Combine above three vectors into one data frame.
addresses <- cbind(city,state,zipcode)
print(addresses)


addresses1<-data.frame(city,state,zipcode)
print(addresses1)
# Print a header.
cat("# # # # The First data frame\n") 

# Print the data frame.
print(addresses)

# Create another data frame with similar columns
new.address <- data.frame(
  city = c("Lowry","Charlotte"),
  state = c("CO","FL"),
  zipcode = c("80230","33949"),
  stringsAsFactors = FALSE
)

# Print a header.
cat("# # # The Second data frame\n") 

# Print the data frame.
print(new.address)

# Combine rows form both the data frames.
all.addresses <- rbind(addresses,new.address)

# Print a header.
cat("# # # The combined data frame\n") 

# Print the result.
print(all.addresses)

#Merging Data Frames
#We can merge two data frames by using the merge() function. The data frames must have same column names 
#on which the merging happens.

#In the example below, we consider the data sets about Diabetes in Pima Indian Women available in the 
#library names "MASS". we merge the two data sets based on the values of blood pressure("bp") and body 
#mass index("bmi"). On choosing these two columns for merging, the records where values of these two 
#variables match in both data sets are combined together to form a single data frame.

library(MASS)
painters
Pima.te
Pima.tr
data()
x=Pima.te
factor.x=factor(Pima.te$bp)
print(factor.x)
nrow(x)
y=Pima.tr
factor.y=factor(Pima.tr$bp)
print(factor.y)
nrow(y)

library(MASS)
merged.Pima <- merge(x = Pima.te, y = Pima.tr)
print(merged.Pima)
merged.Pima <- merge(x = Pima.te, y = Pima.tr,
                     by.x = c("bp","bmi"),
                     by.y = c("bp","bmi")
)
print(merged.Pima)
nrow(merged.Pima)
#biodata>regno,name,age,addresses
#bp_bmi>regno,bp,bmi
#select * from biodata as a, bp_bmi as b where a.regno=b.regno

library(MASS)
print(ships)
data()

