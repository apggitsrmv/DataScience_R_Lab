fb <- numeric(0)
fb[1] <- 1
fb[2] <- 2
num <- 3
tmp <- fb[1] + fb[2]
while (tmp < 4000000) {
  fb[num] <- tmp
  tmp <- fb[num] + fb[num-1]
  num <- num + 1
}
sum(fb[fb%%2 == 0])
