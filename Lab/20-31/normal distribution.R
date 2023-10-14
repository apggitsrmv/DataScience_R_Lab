#In a random collection of data from independent sources, it is generally observed that 
#the distribution of data is normal. Which means, on plotting a graph with the value of the variable
#in the horizontal axis and the count of the values in the vertical axis we get a bell shape curve. 
#The center of the curve represents the mean of the data set. In the graph, fifty percent of values
#lie to the left of the mean and the other fifty percent lie to the right of the graph. 
#This is referred as normal distribution in statistics.

#R has four in built functions to generate normal distribution. They are described below.

#dnorm(x, mean, sd)
#pnorm(x, mean, sd)
#qnorm(p, mean, sd)
#rnorm(n, mean, sd)
#Following is the description of the parameters used in above functions −

#x is a vector of numbers.

#p is a vector of probabilities.

#n is number of observations(sample size).

#mean is the mean value of the sample data. It's default value is zero.

#sd is the standard deviation. It's default value is 1.

#dnorm()
#This function gives height of the probability distribution at each point for a given mean 
#and standard deviation.

#Create a sequence of numbers between -10 and 10 incrementing by 0.1.
x <- seq(-10, 10, by = .1)

# Choose the mean as 2.5 and standard deviation as 0.5.
y <- dnorm(x, mean = 2.5, sd = 0.5)

# Give the chart file a name.
#png(file = "dnorm.png")

plot(x,y)

# Save the file.
#dev.off()

#it is not working
#input <-read.csv("winequaltiy-red.csv")
#print(head(input))
#head(input)

setwd("E:/MCA/unit III")
guna<-read.csv("guna1.csv")
head(guna)
summary(guna)

x<-guna$Attitude
print(x)
print(mean(guna$Attitude))
print(sd(guna$Attitude))

y<-dnorm(guna$Attitude,mean=mean(guna$Attitude),sd=sd(guna$Attitude))
plot(x,y)

#pnorm()
#This function gives the probability of a normally distributed random number 
#to be less that the value of a given number. It is also called "Cumulative Distribution Function".

#Live Demo
# Create a sequence of numbers between -10 and 10 incrementing by 0.2.
x <- seq(-10,10,by = .2)

# Choose the mean as 2.5 and standard deviation as 2. 
y <- pnorm(x, mean = 2.5, sd = 2)

# Give the chart file a name.
#png(file = "pnorm.png")

# Plot the graph.
plot(x,y)

# Save the file.
#dev.off()

#qnorm()
#This function takes the probability value and gives a number whose cumulative value 
#matches the probability value.

#Live Demo
# Create a sequence of probability values incrementing by 0.02.
x <- seq(0, 1, by = 0.02)

# Choose the mean as 2 and standard deviation as 3.
y <- qnorm(x, mean = 2, sd = 1)

# Give the chart file a name.
#png(file = "qnorm.png")

# Plot the graph.
plot(x,y)

# Save the file.
#dev.off()

#rnorm()
#This function is used to generate random numbers whose distribution is normal. It takes the sample size as input and generates that many random numbers. We draw a histogram to show the distribution of the generated numbers.

#Live Demo
# Create a sample of 50 numbers which are normally distributed.
y <- rnorm(50)

# Give the chart file a name.
#png(file = "rnorm.png")

# Plot the histogram for this sample.
hist(y, main = "Normal DIstribution")

# Save the file.
#dev.off()


