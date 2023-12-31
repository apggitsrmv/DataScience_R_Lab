no_repeats <- function(x,missing_digits){
  # Returns BOOLEAN
  # TRUE if x has no repeats and no digit is 0
  # FALSE if x has repeat digits or any digits is 0
  r <- rep(TRUE,length(x))
  for(i in 1:length(x)){
    dont_match <- missing_digits
    while(x[i] > 0){
      mod <- x[i] %% 10
      if(mod == 0){
        r[i] <- FALSE
      }else if(sum(match(dont_match,mod),na.rm=TRUE) > 0){
        r[i] <- FALSE
      }
      dont_match <- c(dont_match,mod)
      x[i] <- x[i] %/% 10
    }
  }
  return(r)
}

digits <- function(x){
  d <- c()
  while(x > 0){
    d <- c(d,x %% 10)
    x <- x %/% 10
  }
  return(rev(d))
}

poss_products <- 1234:9876
poss_products <- poss_products[no_repeats(poss_products,c())]

poss_factors1 <- 2:98 # Factor can't be 1
poss_factors1 <- poss_factors1[no_repeats(poss_factors1,c())]

total <- 0
for(product in poss_products){
  is_pandigital <- FALSE
  used <- digits(product)
  f1 <- poss_factors1[no_repeats(poss_factors1,used)] # Remove factors w/ duplicates
  f1 <- f1[product %% f1 == 0] # Remove non-factors
  if(length(f1) > 0){ # If we have any left
    f2 <- product / f1
    
    for(i in 1:length(f1)){
      dig_f1 <- digits(f1[i])
      dig_f2 <- digits(f2[i])
      # Check that no digits repeat, but that every digit is used
      if(no_repeats(f2[i],c(used,dig_f1)) & length(c(used,dig_f1,dig_f2))==9){
        is_pandigital <- TRUE
      }
    }
  }
  if(is_pandigital){
    total <- total + product
  }
}
print(total)
