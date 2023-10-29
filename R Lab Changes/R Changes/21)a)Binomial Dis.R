# Set parameters
n <- 10  # Number of trials
p <- 0.5  # Probability of success

# Function to calculate factorial
factorial <- function(n) {
  if(n == 0) {
    return(1)
  } else {
    return(n * factorial(n-1))
  }
}

# Function to calculate combinations
choose <- function(n, k) {
  return(factorial(n) / (factorial(k) * factorial(n - k)))
}

# Function to calculate binomial probability
binom_prob <- function(k, n, p) {
  return(choose(n, k) * (p^k) * ((1 - p)^(n - k)))
}

# Generate binomial distribution
binom_dist <- sapply(0:n, function(k) binom_prob(k, n, p))

# Print the distribution
print(binom_dist)
