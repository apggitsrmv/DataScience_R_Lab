## Sieve of Eratosthenes for generating primes 2:n
esieve <- function(n) {
  if (n == 1) return(NULL)
  if (n == 2) return(n)
  # Create a list l of consecutive integers {2,3,.,N}.
  l <- 2:n
  # Start counter
  i <- 1
  # Select p as the first prime number in the list, p=2.
  p <- 2
  while (p^2 <= n) {
    # Remove all multiples of p from the l.
    l <- l[l == p | l %% p != 0]
    # set p equal to the next integer in l which has not been removed.
    i <- i + 1
    # Repeat steps 3 and 4 until p2 > n, all the remaining numbers in the list are primes
    p <- l[i]
  }
  return(l)
}
rotate <- function (v) {
  l <- length(v)
  if (l != 1) {
    w <- (1:l) + 1
    w[w > l] <- 1
  }
  v <- v[w]
  return (v)
}

primes <- esieve(1e6)
print(primes)
answer <- 0

t <- proc.time()
for (n in primes) {
  digs <- as.numeric(unlist(strsplit(as.character(n), "")))
  circular.prime <- TRUE
  if (n > 9) {
    if (!any(digs %% 2 == 0)) {
      for (i in 1:(length(digs) - 1)) {
        digs <- rotate(digs)
        if (!is.prime(as.numeric(paste0(digs, collapse=""))))
          circular.prime <- FALSE
      }
    } else circular.prime <- FALSE
  }
  if (circular.prime) answer <- answer + 1
}
print(proc.time() - t)
print(answer)
