mult_digit <- function(mydig1, mydig2) {
  fac <- 0
  for(i in 1:length(mydig2)) {
    fac.tmp <- mydig1 * mydig2[length(mydig2)-i+1]
    fac.tmp <- c(fac.tmp, rep(0, i-1))
    fac <- c(rep(0,length(fac.tmp)-length(fac)),fac) + fac.tmp
    while(!all(fac < 10)) {
      carry <- c(fac %/% 10, 0)
      if(carry[1]==0) carry <- carry[-1]
      fac <- c(rep(0,length(carry)-length(fac)), fac%%10) + carry
    }
  }
  return(fac)
}
mynum <- 1
for(n in 2:100) {
  num.vect <- as.integer(unlist(strsplit(as.character(n), "")))
  mynum <- mult_digit(mynum, num.vect)
}
sum(mynum)
