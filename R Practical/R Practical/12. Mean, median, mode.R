#Mean
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
mean(x)

mean1<-mean(x,trim=0.1)
print(mean1)
x<-c(3,4.2,7,8)
mean(x)

x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
result.mean <-  mean(x,trim = 0.3)
print(result.mean)

#Median

x<-c(-21,-5,2,3,4.2,7.89876,8,12,18,54,78)
median.result <- median(x)
print(median.result)
t=median(x)/3
median.result<-median(t,trim=0.3)
print(median.result)

#Mode
getmode <- function(v) {
  uniqv <- unique(v)
  print(unique(v))
  print(tabulate(match(v, uniqv)))
  uniqv[which.max(tabulate(match(v, uniqv)))]
}


v <- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)
unique(v)
tabulate(match(v,unique(v)))
result <- getmode(v)
print(result)


#Standard Deviation
v <- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)
standard_deviation <- sd(v)
print(paste("Standard Deviation: ", standard_deviation))
