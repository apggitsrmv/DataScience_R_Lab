# Function to generate uniform random numbers between 0 and 1
runif_custom <- function(n) {
  random_numbers <- numeric(n)
  for(i in 1:n){
    random_numbers[i] <- as.numeric(Sys.time()) %% 1
    Sys.sleep(0.001)  # Sleep for 1 millisecond
  }
  return(random_numbers)
}

# Generate uniform distribution
uniform_dist <- runif_custom(10)

# Print the distribution
print(uniform_dist)
