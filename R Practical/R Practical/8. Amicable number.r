max <-10000
sumdiv <- function(num) {
  if (num==0 | num>max)
    return(0)
  else {
    div <- 1:num
    div <- div[(num %% (1:num))==0]
    result <- sum(div) - num
    if (result != num)
      return(result)  
    else
      return(0)
  }}
numarr1 <- 1:max
numdiv <- sapply(numarr1, sumdiv)
numarr2 <- sapply(numdiv, sumdiv)
sum(numarr1[numarr1==numarr2])
