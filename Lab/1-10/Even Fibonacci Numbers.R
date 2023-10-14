sum <- 0
prev <- 1
current <- 2

sumevenfib <- function(limit) {
  while (current <= limit) {
    if (current %% 2 == 0) {
      sum <- sum + current
    }
    fnext <- prev + current
    prev <- current
    current <- fnext
  }
  return(sum)
}
limit <- 4000000
answer <- sumevenfib(limit)
print(answer)