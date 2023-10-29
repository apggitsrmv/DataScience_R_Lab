# Create the data for the chart
H <- c(7,12,28,3,41)
barplot(H)
setwd("E:/MCA/unit III")
H <-  c(9,13,21,8,36,22,12,41,31,33,19)
# Give the chart file a name
#png(file = "barchart.png")

# Plot the bar chart 
barplot(H)

# Save the file
#dev.off()
#########################
# Create the data for the chart
H <- c(7,12,28,3,41)
M <- c("Mar","Apr","May","Jun","Jul")

# Give the chart file a name
#png(file = "E:/MCA/charts and graphs/barchart_months_revenue.png")

# Plot the bar chart 
barplot(H,names.arg=M,xlab="Month",ylab="Revenue",col="red",
        main="Revenue chart",border="blue")

barplot(H,names.arg=M,xlab="Month",ylab="Revenue",col="green",main="Revenue Chart",border="red")

H<-c(12,14,15,16,11,23,11,14,26,28,29,12)
M<-c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")
barplot(H,names.arg = M)
barplot(H,names.arg=M,xlab="Month",ylab="Rainfall",col="red",main="Rainfall Vs Month",border="blue")
barplot(H,names.arg=M,xlab="Month",ylab="Rainfall",main="Rainfall Vs Month",col="red",border="blue")
barplot(xlab="Month",ylab="Rainfall",main="Rainfall Vs Month",col="red",border="blue",H,names.arg = M)


# Save the file
dev.off()
##############################

# Create the input vectors.

colors = c("green","orange","brown")
months <- c("Mar","Apr","May","Jun","Jul")
regions <- c("East","West","North")

# Create the matrix of the values.
Values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11), nrow = 3, ncol = 5, byrow = TRUE)
print(Values)
# Give the chart file a name
#png(file = "barchart_stacked.png")

# Create the bar chart
barplot(Values, main = "total revenue", names.arg = months, xlab = "month", ylab = "revenue", col = colors)

# Add the legend to the chart
legend("topleft", regions, cex = 0.75, fill = colors)

# Save the file
#dev.off()
#############################

setwd("e:/MCA/Unit III")

df<-read.csv("Combined.csv")
print(df)


df1=df["SALARY"]
print(df1)
#barplot(df1)
v<-df1[,]
print(v)
barplot(v)
dfname1<-df["Name"]
names<-dfname1[,]
print(names)
#names<-c("1","2","3","4","5","6","7","8")
barplot(v,names.arg=names,xlab="salary",ylab="in Rs",main="Salary Chart",col="red",border="blue")
 