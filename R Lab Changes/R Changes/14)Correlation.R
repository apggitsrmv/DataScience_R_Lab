# Number of random samples
n <- 1000

# Create vectors to store the generated samples
x <- numeric(n)
y <- numeric(n)

# Generate random samples using the Box-Muller transform
for (i in 1:(n/2)) {
  u1 <- runif(1)
  u2 <- runif(1)
  r <- sqrt(-2 * log(u1))
  theta <- 2 * pi * u2
  x[i] <- r * cos(theta)
  y[i] <- r * sin(theta)
}

# Combine the two sets of samples to get a standard normal distribution
z <- c(x, y)

# Plot a histogram of the generated normal distribution
hist(z, breaks = 30, main = "Generated Normal Distribution", xlab = "Value")
