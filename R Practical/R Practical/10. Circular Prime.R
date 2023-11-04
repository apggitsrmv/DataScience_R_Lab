is_prime <- function(n) {
  if (n <= 1) {
    return(FALSE)
  }
  if (n == 2) {
    return(TRUE)
  }
  if (any(n %% 2:(floor(sqrt(n))) == 0)) {
    return(FALSE)
  }
  return(TRUE)
}

# Function to check if a number is a circular prime
is_circular_prime <- function(n) {
  n_str <- as.character(n)
  for (i in 1:nchar(n_str)) {
    if (!is_prime(as.numeric(n_str))) {
      return(FALSE)
    }
    n_str <- paste0(substr(n_str, 2, nchar(n_str)), substr(n_str, 1, 1))
  }
  return(TRUE)
}

# Count circular primes below one million
circular_primes_count <- 0
for (i in 2:1000000) {
  if (is_prime(i) && is_circular_prime(i)) {
    circular_primes_count <- circular_primes_count + 1
  }
}

print(circular_primes_count)