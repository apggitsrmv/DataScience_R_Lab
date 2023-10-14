# Function to check if a number is prime
is_prime <- function(n) {
  if (is.na(n) || n < 2) return(FALSE)
  for (i in 2:sqrt(n)) {
    if (n %% i == 0) return(FALSE)
  }
  TRUE
}

# Function to generate circular primes up to a given limit
generate_circular_primes <- function(limit) {
  circular_primes <- c()
  
  # Function to rotate digits of a number
  rotate <- function(x) {
    digits <- as.character(x)
    rotations <- sapply(1:(nchar(x)-1), function(i) paste0(c(tail(digits, -i), head(digits, i)), collapse = ""))
    as.numeric(c(x, rotations))
  }
  
  # Loop through numbers up to the limit
  for (num in 2:limit) {
    # Check if the number is prime
    if (is_prime(num)) {
      # Check if all circular permutations are prime
      circular <- all(sapply(rotate(num), is_prime))
      if (circular) {
        circular_primes <- c(circular_primes, num)
      }
    }
  }
  
  circular_primes
}

# Set the limit for circular primes
limit <- 100000

# Generate circular primes
circular_primes <- generate_circular_primes(limit)

# Print the count and circular primes
cat("Number of Circular Primes up to", limit, ":", length(circular_primes), "\n")
#cat("Circular Primes:", circular_primes, "\n")

