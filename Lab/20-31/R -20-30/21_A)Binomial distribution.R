# Generate a sequence of values from 0 to 50.
x <- seq(0, 50, by = 1)

# Calculate the probability mass function (PMF) of a binomial distribution.
# The second argument is the number of trials, and the third argument is the probability of success.
y <- dbinom(x, size = 50, prob = 0.5)

# Give the chart file a name.
png(file = "dbinom.png")

# Plot the graph for this sample.
plot(x, y, type = "h", lty = 10, col = "blue", main = "Binomial Distribution", xlab = "Number of Successes", ylab = "Probability")

# Save the file.
dev.off()

# Generate a sequence of values from 0 to 50.
x <- seq(0, 50, by = 1)

# Calculate the cumulative probability of a binomial distribution.
# The second argument is the number of trials, and the third argument is the probability of success.
y <- pbinom(x, size = 50, prob = 0.5)

# Give the chart file a name.
png(file = "pbinom.png")

# Plot the graph for this sample.
plot(x, y, type = "l", col = "blue", lty = 1, main = "Cumulative Probability of Binomial Distribution", xlab = "Number of Successes", ylab = "Cumulative Probability")

# Save the file.
dev.off()


# Generate a sequence of values from 0 to 50.
x <- seq(0, 50, by = 1)

# Create the quantiles of the binomial distribution.
y <- qbinom(p = x / 50, size = 50, prob = 0.5)

# Give the chart file a name.
png(file = "qbinom.png")

# Plot the graph for this sample.
plot(x, y, type = "l", col = "blue", lty = 1, main = "Quantiles of Binomial Distribution", xlab = "Probability", ylab = "Quantiles")

# Save the file.
dev.off()

# Generate a sequence of integers from 26 to 51.
x <- seq(26, 51, by = 1)

# Calculate the cumulative probability of getting 26 or fewer heads in 51 tosses of a fair coin.
y <- pbinom(x, size = 51, prob = 0.5)

# Print the values of x.
print(x)
# Give the chart file a name.
png(file = "qbinom1.png")
# Plot the graph for this sample.
plot(x, y, type = "l", col = "blue", lty = 1, main = "Cumulative Probability", xlab = "Number of Heads", ylab = "Cumulative Probability")
# Save the file.
dev.off()


#qbinom()

#Live Demo
# How many heads will have a probability of 0.25 will come out when a coin
# is tossed 51 times.
x <- qbinom(0.25,51,1/2)

print(x)

#rbinom()
#This function generates required number of random values of given probability from a given sample.

#Live Demo
# Find 8 random values from a sample of 150 with probability of 0.4.
x <- rbinom(8,150,.4)

print(x)

