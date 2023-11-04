pandigital.9 <- function(x)
  (length(x)==9 & sum(duplicated(x))==0 & sum(x==0)==0)
pandigital.prod <- vector()
i <- 1
for (m in 2:100) {
  if (m < 10)
    n_start <- 1234
  else
    n_start <- 123
  for (n in n_start:round(10000/ m)) {
    digs <- as.numeric(unlist(strsplit(paste0(m, n, m * n), "")))
    if (pandigital.9(digs)) {
      pandigital.prod[i] <- m * n
      i <- i + 1
      print(paste(m, "*", n, "=", m * n))
    }
  }
}
answer <- sum(unique(pandigital.prod))
print(answer)
