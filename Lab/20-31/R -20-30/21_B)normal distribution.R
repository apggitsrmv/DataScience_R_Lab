
#dnorm(x, mean, sd)
#pnorm(x, mean, sd)
#qnorm(p, mean, sd)
#rnorm(n, mean, sd)
# Create a sequence of numbers between -10 and 10 incrementing by 0.1.
x <- seq(-10, 10, by = 0.1)

# Choose the mean as 2.5 and standard deviation as 0.5.
y <- dnorm(x, mean = 2.5, sd = 0.5)

# Give the chart file a name.
png(file = "dnorm.png")

# Plot the graph for this sample.
plot(x, y, type = "l", col = "blue", lty = 1, main = "Normal Distribution", xlab = "x", ylab = "Probability Density")

# Save the file.
dev.off()


# Save the file.
#dev.off()
getwd()
#it is not working
input <-read.csv("winequality-red.csv")
print(head(input))
#head(input)

#setwd("E:/MCA/unit III")
guna<-read.csv("guna1.csv")
head(guna)
summary(guna)

x<-guna$Attitude
print(x)
print(mean(guna$Attitude))
print(sd(guna$Attitude))

y<-dnorm(guna$Attitude,mean=mean(guna$Attitude),sd=sd(guna$Attitude))
png(file = "pnorm1.png")
plot(x, y, type = "l", col = "blue", lty = 1, main = "Empirical Distribution vs Normal Distribution", xlab = "Attitude", ylab = "Density")
# Save the file.
dev.off()


#pnorm()
#This function gives the probability of a normally distributed random number 
#to be less that the value of a given number. It is also called "Cumulative Distribution Function".

# Live Demo
# Create a sequence of numbers between -10 and 10 incrementing by 0.2.
x <- seq(-10, 10, by = 0.2)

# Choose the mean as 2.5 and standard deviation as 2. 
y <- pnorm(x, mean = 2.5, sd = 2)

# Plot the cumulative distribution function (CDF) of a normal distribution.
plot(x, y)#, type = "l", col = "blue", lty = 1, main = "Cumulative Distribution Function", xlab = "Values", ylab = "Cumulative Probability")

# Uncomment the following lines if you want to save the plot to a file.
# Give the chart file a name.
#pdf(file = "pnormEx1.pdf")  # Use pdf device instead of png
png(file = "qnormEx3.png")
# Save the file.
dev.off()


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

# Live Demo
# Create a sample of 50 numbers which are normally distributed.
y <- rnorm(50)

# Give the chart file a name.
png(file = "rnorm.png")

# Plot the histogram for this sample.
hist(y, col = "lightblue", main = "Normal Distribution")

# Save the file.
dev.off()


