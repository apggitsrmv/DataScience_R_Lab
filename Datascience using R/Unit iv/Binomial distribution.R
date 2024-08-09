#The binomial distribution model deals with finding the probability of success of an event
#which has only two possible outcomes in a series of experiments.
#For example, tossing of a coin always gives a head or a tail.

#R has four in-built functions to generate binomial distribution.
#They are described below.

#dbinom(x, size, prob)
#pbinom(x, size, prob)
#qbinom(p, size, prob)
#rbinom(n, size, prob)
#Following is the description of the parameters used −

#x is a vector of numbers.

#p is a vector of probabilities.

#n is number of observations.

#size is the number of trials.

#prob is the probability of success of each trial.

#dbinom()
#This function gives the probability density distribution at each point.


#Live Demo
#The probability of finding exactly 3 heads in tossing a coin repeatedly for 10 times is
#estimated during the binomial distribution.
x<-3
y<-dbinom(x,10,0.5)
print(y)

x<-0
y0<-dbinom(x,4,0.5)
print(y0)
x<-1
y1<-dbinom(x,4,0.5)
print(y1)
x<-2
y2<-dbinom(x,4,0.5)
print(y2)
x<-3
y3<-dbinom(x,4,0.5)
print(y3)
x<-4
y4<-dbinom(x,4,0.5)
print(y4)
y=y0+y1+y2+y3+y4
print(y)
x<-4
y<-pbinom(x,4,0.5)
print(y)

y<-dbinom(x,4,0.1)
print(y)
x<-4
y<-dbinom(x,4,0.1)
print(y)
x<-2
y<-dbinom(x,10,0.1)
print(y)

x<-5
y<-dbinom(x,10,0.1)
print(y)
x<-10
y<-pbinom(x,10,0.1)
print(y)

x<-seq(0,4,0.1)
x<-4
y<-pbinom(x,4,0.1)
print(y)
plot(x,y)

# to find the probability of getting defective greater than 2
y1<-0
x<-0
y<-dbinom(x,4,0.1)
y1=y1+y

x<-1
y<-dbinom(x,4,0.1)
y1=y1+y

x<-2
y<-dbinom(x,4,0.1)
y1=y1+y

print(y1)


x<-2
y<-pbinom(x,4,0.1)
print(y)
z<-1-y
print(z)


#to find the probability of getting defective lies between 2 and 3
x1<-2
y1<-pbinom(x1,4,0.5)
print(y1)

x2<-3
y2<-pbinom(x2,4,0.5)
print(y2)

z=y2-y1
print(z)

#probability of getting 1 head from tossing of 2 heads 
x<-1
y<-dbinom(x,2,0.5)
print(y)

#probability of getting 2 heads from tossing of 2 heads
x<-2
y<-dbinom(x,2,0.5)
print(y)



#probability of getting 1 head or greater from tossing of 2 heads
x<-1
y<-pbinom(x,2,0.5)
print(y)

x<-0
y<-pbinom(x,2,0.5)
print(y)

x<-1
y<-qbinom(x,2,0.5)
print(y)

x<-seq(0,51,0.5)
y<-dbinom(x,51,0.5)
plot(x,y)


#probability of getting 26 heads
x<-26
y<-dbinom(x,51,0.5)
print(y)

# Probability of getting 26 or greater heads from a 51 tosses of a coin.
x<-seq(26,51,0.5)
y <- pbinom(x,51,0.5)

print(x)
plot(x,y)
# Probability of getting 26 or less heads from a 51 tosses of a coin
#1st method
y<-1-pbinom(x,51,0.5)
x<-seq(0,25,0.5)
print(y)
plot(x,y)

#2nd method
x<-seq(0,25,0.5)
y<-pbinom(x,25,0.5)
plot(x,y)






#Live Demo
# Create a sample of 50 numbers which are incremented by 1.
x <- seq(0,50,1)

# Create the binomial distribution.
y <- dbinom(x,50,0.5)

# Give the chart file a name.
#png(file = "dbinom.png")

# Plot the graph for this sample.
plot(x,y)

# Save the file.
#dev.off()


#pbinom()
#This function gives the cumulative probability of an event. 
#It is a single value
#representing the probability.

x <- seq(0,50,by = 1)
x<-seq(0,50)
# Create the binomial distribution.
y <- pbinom(x,50,0.5)

# Give the chart file a name.
#png(file = "dbinom.png")

# Plot the graph for this sample.
plot(x,y)


x <- seq(0,-50,by = -1)

# Create the binomial distribution.
y <- qbinom(x,-50,0.5)

# Give the chart file a name.
#png(file = "dbinom.png")

# Plot the graph for this sample.
plot(x,y)
#qbinom()
#This function takes the probability value and gives a number whose
#cumulative value matches the probability value.

#Live Demo
# How many heads will have a probability of 0.25 will come out when a coin
# is tossed 51 times.
x <- qbinom(0.25,4,1/2)

print(x)


#rbinom()
#This function generates required number of random values of given 
#probability from a given sample.

#Live Demo
# Find 8 random values from a sample of 150 with probability of 0.4.
x <- rbinom(8,150,.4)

print(x)

print(dbinom(0, size=12, prob=0.2) + 
  + dbinom(1, size=12, prob=0.2) + 
  + dbinom(2, size=12, prob=0.2) + 
  + dbinom(3, size=12, prob=0.2) + 
  + dbinom(4, size=12, prob=0.2))

print(pbinom(4,12,0.2))