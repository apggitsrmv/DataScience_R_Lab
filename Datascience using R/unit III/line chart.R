#A line chart is a graph that connects a series of points by drawing line segments between them. 
#These points are ordered in one of their coordinate (usually the x-coordinate) value. 
#Line charts are usually used in identifying the trends in data.

#The plot() function in R is used to create the line graph.

#Syntax
#The basic syntax to create a line chart in R is −

#plot(v,type,col,xlab,ylab)
#Following is the description of the parameters used −

#v is a vector containing the numeric values.

#type takes the value "p" to draw only the points, "l" to draw only the lines and "o" to draw both points and lines.

#xlab is the label for x axis.

#ylab is the label for y axis.

#main is the Title of the chart.

#col is used to give colors to both the points and lines.

#Example
#A simple line chart is created using the input vector and the type parameter as "O". 
#The below script will create and save a line chart in the current R working directory.

# Create the data for the chart.
v <- c(7,12,28,3,41)
print(v)
# Give the chart file a name.
#png(file = "line_chart.jpg")

# Plot the bar chart. 
plot(v,type = "o")

plot(v,type="l")

plot(v)
# Save the file.
#dev.off()
#When we execute the above code, it produces the following result −

#Line Chart Title, Color and Labels
#The features of the line chart can be expanded by using additional parameters.
#We add color to the points and lines, give a title to the chart and add labels to the axes.

#Example

# Create the data for the chart.
v <- c(7,12,28,3,41)

# Give the chart file a name.
#png(file = "line_chart_label_colored.jpg")

# Plot the bar chart.
plot(v,type = "o", col = "red", xlab = "Month", ylab = "Rain fall",
     main = "Rain fall chart")

# Save the file.
#dev.off()
#Multiple Lines in a Line Chart
#More than one line can be drawn on the same chart by using the lines()function.

#After the first line is plotted, the lines() function can use an additional vector as
#input to draw the second line in the chart,


# Create the data for the chart.
v <- c(7,12,28,3,41)#2005
t <- c(14,7,6,19,3)# 2010
b<-c(15,7,18,29,13)# 2020

# Give the chart file a name.
#png(file = "line_chart_2_lines.jpg")

# Plot the bar chart.
plot(v,type = "o",col = "red", xlab = "Month", ylab = "Rain fall", 
     main = "Rain fall chart")

lines(t, type = "o", col = "blue")
lines(b,type="o",col="green")
# Save the file.
#dev.off()
colors<-c("red","blue","green")
regions<-c("2005","2010","2020")
legend("topleft", regions, cex = 1.2, fill = colors)

#plot,lines,ylab,xlab,main,legend


t=0:10
z= exp(-t/2)

print(t)
print(z)


plot(t,z, type="l", col="green", lwd=5, xlab="time", ylab="concentration")

x=-10:10
y=x*x
print(x)
print(y)
plot(x,y,type="o",col="red",lwd=5,xlab="X-Axis",ylab="Y-Axis")
#lines(t, w, col="red", lwd=2)


setwd("e:/MCA/Unit III")

df<-read.csv("Combined.csv")
print(df)


df1=df["Basic"]
plot(df1)
v1<-df1[,]
print(v1)

plot(v1,type = "o",col = "red", xlab = "Persons", ylab = "Basic", 
     main = " Basic chart")

df1=df["SALARY"]
v2<-df1[,]
print(v2)

plot(v1,type = "o",col = "red", xlab = "Persons", ylab = "Basic", 
     main = " Basic chart")

lines(v2, type = "o", col = "blue")


plot(v2,type = "o",col = "red", xlab = "Persons", ylab = "Basic", 
     main = " Salary chart")


v<-df[,c("SALARY","Basic")]
print(v)
plot(SALARY~Basic,data=v,type='o',col=c("red","green"))
legend("topleft", c("Salary","Basic"), cex = 0.75, fill = c("red","green"))



# line chart is being to understand the comparative study among set of data

#plot(x, y, type = "l", lty = 1)
#lines(x, y, type = "l", lty = 1)

#x, y: coordinate vectors of points to join
#type: character indicating the type of plotting. Allowed values are:
#  “p” for points
#l” for lines
#“b” for both points and lines
#“c” for empty points joined by lines
#“o” for overplotted points and lines
#“s” and “S” for stair steps
#“n” does not produce any points or lines
#lty: line types. Line types can either be specified as an integer 
#(0=blank, 1=solid (default), 2=dashed, 3=dotted, 4=dotdash, 5=longdash, 6=twodash) 




# Create some variables
x <- 1:10
y1 <- x*x
y2  <- 2*x
y3<-3*x+1
print(x)
print(y1)
print(y2)

# Create a basic stair steps plot 
plot(x, y1, type = "S")
# Show both points and line
plot(x, y1, type = "b", pch = 19, 
     col = "red", xlab = "x", ylab = "y")


# Add a second line
lines(x, y2, pch = 18, col = "blue", type = "b", lty = 2)
lines(x, y3, pch = 18, col = "green", type = "b", lty = 2)
# Add a legend to the plot
legend("topleft", legend=c("Line 1", "Line 2","Line3"),
       col=c("red", "blue","green"), lty = 1:3, cex=0.8)


#plot(single),plot(two value),lines,legend,database