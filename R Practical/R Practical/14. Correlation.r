x <- c(10, 12, 14)
y <- c(11, 13, 24)
n <- length(x)
sumx <- sum(x)
sumy <- sum(y)
sumxy <- sum(x * y)
sumxx <- sum(x*x)
sumyy <- sum(y*y)
r <- (n * sumxy - sumx * sumy) / sqrt((n * sumxx - sumx * sumx) * (n * sumyy - sumy * sumy))
print(paste("Mathematical method Correlation coefficient (r):", r))