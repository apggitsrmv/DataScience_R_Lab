#Poisson Distribution
#The Poisson distribution is the probability distribution of independent event 
#occurrences in an interval. If λ is the mean occurrence per interval, 
#then the probability of having x occurrences within a given interval is:
 
 
#There are four Poisson functions available in R: 
  
#dpois
#ppois
#qpois
#rpois




#Problem
#If there are twelve cars crossing a bridge per minute on average, 
#find the probability of having seventeen or more cars crossing the bridge 
#in a particular minute.

#Solution
#The probability of having sixteen or less cars crossing the bridge in a particular
#minute is given by the function ppois.

ppois(16, lambda=12,lower.tail = TRUE)   # lower tail 
#Hence the probability of having seventeen or more cars 
#crossing the bridge in a minute is in the upper tail of the probability density function.

ppois(16, lambda=12, lower=FALSE)   # upper tail 


#problem
#In the manufacture of glassware, bubbles can occur in the glass which reduces
#the status of the glassware to that of a ‘second’. If, on average, one in every 1000 
#items produced has a bubble, calculate the probability that exactly six items in a batch 
#of three thousand are seconds. 

#n=3000,p=0.001,r=6
lamda1=3000*0.001
k<-exp(-lamda1)*lamda1^6/factorial(6)
print(k)

#dpois will provide poisson value for a particular x
dpois(6,lamda1)

#calculate poisson value for 0,1,2,3
k1=dpois(0,lamda1)
k2=dpois(1,lamda1)
k3=dpois(2,lamda1)
k4=dpois(3,lamda1)
c<-paste(k1,",",k2,",",k3,",",k4)

print(c)
print(k1+k2+k3+k4)
#ppois value will provide less than 3 if lower.tail=True otherwise greater than 3 
#if lower.tail=False
ppois(3,lamda1,lower.tail=TRUE)
ppois(3,lamda1,lower.tail=FALSE)
#qpois value will provide number of n values for the given probability for
#given lambda value
qpois(0.8,lamda1)
#The mean number of bacteria per millilitre of a liquid is known to be 6.
#Find the probability that in 1 ml of the liquid, there will be:
  #(a) 0, (b) 1, (c) 2, (d) 3, (e) less than 4, (f) 6 bacteria..(lambda=6)
lambda1=6
ka=dpois(0,lamda1)
kb=dpois(1,lamda1)
kc=dpois(2,lamda1)
kd=dpois(3,lamda1)
ke=dpois(4,lamda1)
kf=dpois(5,lamda1)
kg=dpois(6,lamda1)
print(paste("ka=",ka,"kb=",kb,"kc=",kc,"kd=",kd,"ke=",ke,"kf=",kf,"kg=",kg))
print(ka+kb+kc+kd+ke+kf+kg)
#less than 4
lessthan4=ppois(3,lamda1,lower.tail=TRUE)
print(lessthan4)
greaterthan4=ppois(3,lamda1,lower.tail=FALSE)
print(greaterthan4)
print(lessthan4+greaterthan4)

#calculate how many elements if probability is 0.001 and lamda1 is6
numberofelements=qpois(0.96,6)
print(numberofelements)

n=lamda1/0.001
print(n)

# vector of colors
colors <- c("Red", "Blue", "Gold", "Black", "Pink", "Green")

# declare a list to hold distribution values
poissondist < - list()

a < - c(1, 2, 3, 4, 5, 6) # A vector for values of u
for (i in 1:6) {
  poisson.dist[[i]] <- c(dpois(0:20, i)) # Store distribution vector for each corresponding value of u
}

# plot each vector in the list using the colors vectors to represent each value for u
plot(unlist(poisson.dist[1]), type = "o", xlab="y", ylab = "P(y)",
     col = colors[i])
for (i in 1:6) {
  lines(unlist(poisson.dist[i]), type = "o", col = colors[i])
}
# Adds legend to the graph plotted
legend("topright", legend = a, inset = 0.08, cex = 1.0, fill = colors, title = "Values of u")

