
sample.range <- 50:150
iq.mean <- 100
iq.sd <- 15
iq.dist <- dnorm(sample.range, mean = iq.mean, sd = iq.sd)
iq.df <- data.frame("IQ" = sample.range, "Density" = iq.dist)
library(ggplot2)
ggplot(iq.df, aes(x = IQ, y = Density)) + geom_point()

pp <- function(x) {
  print(paste0(round(x * 100, 3), "%"))
}
# likelihood of IQ == 140?
pp(iq.df$Density[iq.df$IQ == 140])

# likelihood of IQ >= 140?
pp(sum(iq.df$Density[iq.df$IQ >= 140]))

pp(sum(iq.df$Density[iq.df$IQ >= 115]))

pp(sum(iq.df$Density[iq.df$IQ >= 85]))

# likelihood of 50 < IQ <= 90?
pp(sum(iq.df$Density[iq.df$IQ <= 90]))

pp(sum(iq.df$Density[iq.df$IQ <= 150]))


cdf <- pnorm(sample.range, iq.mean, iq.sd)
iq.df <- cbind(iq.df, "CDF_LowerTail" = cdf)
ggplot(iq.df, aes(x = IQ, y = CDF_LowerTail)) + geom_point()

# likelihood of 50 < IQ <= 90?
pp(iq.df$CDF_LowerTail[iq.df$IQ == 90])

# set lower.tail to FALSE to obtain P[X >= x]
cdf <- pnorm(sample.range, iq.mean, iq.sd, lower.tail = FALSE)
iq.df <- cbind(iq.df, "CDF_UpperTail" = cdf)
# Probability for IQ >= 140? same value as before using dnorm!
pp(iq.df$CDF_UpperTail[iq.df$IQ == 140])

# input to qnorm is a vector of probabilities
prob.range <- seq(0, 1, 0.001)
icdf.df <- data.frame("Probability" = prob.range, "IQ" = qnorm(prob.range, iq.mean, iq.sd))
ggplot(icdf.df, aes(x = Probability, y = IQ)) + geom_point()

# what is the 25th IQ percentile?
print(icdf.df$IQ[icdf.df$Probability == 0.25])

# what is the 75 IQ percentile?
print(icdf.df$IQ[icdf.df$Probability == 0.75])

# note: this is the same results as from the quantile function
quantile(icdf.df$IQ)

# fix random seed for reproducibility
set.seed(1)
# law of large numbers: mean will approach expected value for large N
n.samples <- c(100, 1000, 10000)
my.df <- do.call(rbind, lapply(n.samples, function(x) data.frame("SampleSize" = x, "IQ" = rnorm(x, iq.mean, iq.sd))))
# show one facet per random sample of a given size
ggplot() + geom_histogram(data = my.df, aes(x = IQ)) + facet_wrap(.~SampleSize, scales = "free_y")

# note: we can also implement our own sampler using the densities
my.sample <- sample(iq.df$IQ, 100, prob = iq.df$Density, replace = TRUE)
my.sample.df <- data.frame("IQ" = my.sample)
ggplot(my.sample.df, aes(x = IQ)) + geom_histogram()