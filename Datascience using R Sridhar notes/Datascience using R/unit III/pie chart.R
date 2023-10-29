#R Programming language has numerous libraries to create charts and graphs. A pie-chart is a representation of values as slices of a circle with different colors. 
#The slices are labeled and the numbers corresponding to each slice is also represented in the chart.

#In R the pie chart is created using the pie() function which takes positive numbers as a vector input. The additional parameters are used to control labels, color, title etc.

#Syntax
#The basic syntax for creating a pie-chart using the R is −

#pie(x, labels, radius, main, col, clockwise)
#Following is the description of the parameters used −

#x is a vector containing the numeric values used in the pie chart.

#labels is used to give description to the slices.

#radius indicates the radius of the circle of the pie chart.(value between −1 and +1).

#main indicates the title of the chart.

#col indicates the color palette.

#clockwise is a logical value indicating if the slices are drawn clockwise or anti clockwise.

#Example
#A very simple pie-chart is created using just the input vector and labels.
#The below script will create and save the pie chart in the current R working directory.

# Create data for the graph.
x <- c(21, 62, 10, 53,76)
#x<-c(9,13,21,8,36,22,12,41,31,33,19)
# 21+62+10+53+76=222
#21/146*360
21/222*360


34.05+100.54+16.21+85.95+123.24
labels <- c("London", "New York", "Singapore", "Mumbai","chennai")

# Give the chart file a name.
#png(file = "city.png")

# Plot the chart.
pie(x,labels)

# Save the file.
#dev.off()

#Pie Chart Title and Colors
#We can expand the features of the chart by adding more parameters to the function. We will use parameter main to add a title to the chart and another parameter is col which will make use of rainbow colour pallet while drawing the chart. The length of the pallet should be same as the number of values we have for the chart. Hence we use length(x).

#Example
#The below script will create and save the pie chart in the current R working directory.


# Plot the chart with title and rainbow color pallet.
pie(x, labels, main = "City pie chart", col = rainbow(length(x)))


#Slice Percentages and Chart Legend
#We can add slice percentage and a chart legend by creating additional chart variables.


# Create data for the graph.
x <- c(21, 62, 10, 53,76)
labels <-  c("London","New York","Singapore","Mumbai","Chennai")

piepercent<- round(100*x/sum(x), 1)

# Give the chart file a name.
#png(file = "city_percentage_legends.jpg")

# Plot the chart.
pie(x, labels = piepercent, main = "City pie chart",col = rainbow(length(x)))
legend("topleft", c("London","New York","Singapore","Mumbai","Chennai"), cex = 0.7,
       fill = rainbow(length(x)))


legend("bottomright",labels,cex=1.2,fill=rainbow(length(x)))
# Save the file.
#3dev.off()

#3D Pie Chart
#A pie chart with 3 dimensions can be drawn using additional packages. The package plotrix has a function called pie3D() that is used for this.

# Get the library.
library(plotrix)

setwd("E:/MCA/unit III")
# Create data for the graph.
x <-  c(21, 62, 10,53,76)
lbl <-  c("London","New York","Singapore","Mumbai","Chennai")

# Give the chart file a name.
#png(file = "3d_pie_chart.jpg")

# Plot the chart.
pie3D(x,labels = lbl,explode = 0.1, main = "Pie Chart of Countries ")
pie3D(x,labels=lbl,explode = 0.1, main = "Pie Chart of Countries ",)
legend("topright", c("London","New York","Singapore","Mumbai","Chennai"), cex =0.6,
       fill = rainbow(length(x)))
# Save the file.
dev.off()

x <- c(21, 62, 10, 53,76)
labels <-  c("London","New York","Singapore","Mumbai","Chennai")

piepercent<- round(100*x/sum(x), 1)

# Give the chart file a name.
#png(file = "city_percentage_legends.jpg")

# Plot the chart.
pie3D(x, labels = piepercent, main = "City pie chart",col = rainbow(length(x)))
legend("topright", c("London","New York","Singapore","Mumbai","Chennai"), cex = 0.7,
       fill = rainbow(length(x)))




setwd("E:/MCA/unit III")

df<-read.csv("Combined.csv")
print(df)

v<-df[,c("Basic")]
print(v)

v<-c(4,4)
lbl <-  c("100","150")

v<-df[,c("Basic")]
print(v)

lbl <-  c("100","150","200")
v<-df[,c("Basic")]
print(v)

lbl<-v
# Give the chart file a name.
#png(file = "3d_pie_chart.jpg")
pie(v,lbl,main="BASIC",col=rainbow(length(v)))
legend("topright", c("London","New York","Singapore","Mumbai","Chennai"), cex = 0.7,
       fill = rainbow(length(v)))

legend("topleft", c(100,120,100,150,100,100,200,150), cex = 0.7,fill = rainbow(length(v)))


# Plot the chart.
pie3D(v,labels = lbl,explode = 0.1, main = "Pie Chart of Basic ",col=rainbow(length(v)))
#legend("bottomright",lbl,cex=0.7,fill=rainbow(length(v)))
legend("topright", lbl, cex = 0.7,fill = rainbow(length(v)))


v<-df[,c("SALARY")]
print(v)
lbl<-(c("1","2","3","4","5","6","7","8"))
lbl<-c(v)
pie(v,lbl)
# Plot the chart.
pie3D(v,labels = lbl,explode = 0.1, main = "Pie Chart of Salary ")


# Barchart, Boxplot
# Barchart will be working for individual data by drawing corresponds bars based on their values
# Boxplot will be working for data which will show Max, 1st Quartile, Mean/Median,3rd Quartile and Max
# Histogram will be showing a graph based on the frequence (number of data)in a dataset for a particularly
#piechart will working for individual data by drawing corresponds slices in a circle based on their values