isPalindrome <- function(n) {
  n <- as.character(n)
  n <- unlist(strsplit(n, ""))
  len <- floor(length(n)/2)
  result <- all(n[1:len] == n[length(n):(length(n)-len+1)])
  return(result)
}
palin <- numeric(0)
for (i in 100:999) {
  palin <- c(palin, (i:999)*i)
}
max(palin[sapply(palin, isPalindrome)])
