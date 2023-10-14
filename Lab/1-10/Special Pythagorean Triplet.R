# Function to check if a set of numbers is a Pythagorean triplet
is_pythagorean_triplet <- function(a, b, c) {
  return(a^2 + b^2 == c^2)
}

# Function to find the Pythagorean triplet for a given sum
find_pythagorean_triplet <- function(sum) {
  for (a in 1:(sum/3)) {
    for (b in (a+1):(sum/2)) {
      c <- sum - a - b
      if (is_pythagorean_triplet(a, b, c)) {
        return(c(a, b, c))
      }
    }
  }
  return(NULL)
}

# Set the desired sum
target_sum <- 1000

# Find the Pythagorean triplet
triplet <- find_pythagorean_triplet(target_sum)

# Calculate the product abc
product_abc <- prod(triplet)

# Print the result
cat("Pythagorean Triplet:", triplet, "\n")
cat("Product abc:", product_abc, "\n")
