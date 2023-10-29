# Set parameters
lambda <- 0.5  # Rate parameter

# Function to generate exponential random numbers
rexp_custom <- function(n, lambda) {
  u <- runif(n)  # Generate uniform random numbers between 0 and 1
  x <- -log(1 - u) / lambda  # Apply inverse transform method
  return(x)
}

# Generate exponential distribution
exp_dist <- rexp_custom(1000, lambda)

# Print the distribution
print(exp_dist)
