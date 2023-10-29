# plot
#x<-c(1,0.5,0.55,0.54,0.56,0.43,0.36,0.45,0.11,0.13,0.23,-0.02,-0.12,-0.23,-0.43,-0.54,-0.16,-0.7,-1)
#x<-c(1,0.0001,0.05,0.06,0.09,0.0023,0.0032,0.0043,0.0006,-0.00056,-0.00063,-0.0043,-0.05,-0.06,-1)
#boxplot(x,horizontal = FALSE)
x <- c(8, 5, 14,   12, 3, 9, 7, 4,4, 6, 8, 12,  2, 0, -1, 5, 3)
#x<-c(8,5,3,7)
summary(x)
boxplot(x, horizontal = FALSE)
boxplot(x,horizontal = TRUE)
   
x<-c(10,11,14,15,120,12,34,54,65,24,67,230)
boxplot(x,horizontal = FALSE)
print(mean(x))
x <- c(8, 5, 14, -9, 19, 12, 3, 9, 7, 4, 4, 6, 8, 12, -8, 2, 0, -1, 5, 3)
summary(x)
boxplot(x,horizontal = FALSE)

x <- c(8, 5, 14,  12, 3, 9, 7, 4, 4, 6, 8, 12,  2, 0, -1, 5, 3)
summary(x)
boxplot(x,horizontal = FALSE)

x<-c(1,2,3,200,201)
summary(x)
boxplot(x,horizontal=FALSE)

x <- c(8, 5, 14, 12, 3, 9, 7, 4,4, 6, 8, 12, 2, 0, -1, 5, 3)
summary(x)
boxplot(x,horizontal = FALSE)


mean(x)
mtcars
input <- mtcars[,c('mpg','cyl')]
print(head(input))
# Give the chart file a name.
#png(file = "boxplot.png")

# Plot the chart.
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", main = "Mileage Data")


# Plot the chart.
boxplot(hp ~ cyl, data = mtcars, xlab = "Number of Cylinders",
        ylab = "Horse power", main = "power Data")

# Save the file.
#dev.off()
########################################333
# Give the chart file a name.
#png(file = "boxplot_with_notch.png")

# Plot the chart.
boxplot(mpg ~ cyl, data = mtcars, 
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", 
        main = "Mileage Data",
        notch = TRUE, 
        varwidth = TRUE, 
        col = c("green","yellow","purple"),
        names = c("4","6","8")
)
# Save the file.
#dev.off()

setwd("e:/MCA/Unit III")

df<-read.csv("Combined.csv")
print(df)

v<-df[,c("SALARY","Basic")]
print(v)

boxplot(SALARY~Basic,data=v,xlab="Basic",ylab="Salary",main="Salary Chart")



df<-read.csv("guna1.csv")
print(df)

v<-df[,c("Apptitude","gunas")]
print(v)

boxplot(Apptitude~gunas,data=v,xlab="Guans",ylab="Apptitude",main="Gunas chart")


v<-df[,c("Apptitude","Attitude")]
print(v)

boxplot(Apptitude~Attitude,data=v,xlab="Attitude",ylab="Apptitude",main="Gunas chart")
