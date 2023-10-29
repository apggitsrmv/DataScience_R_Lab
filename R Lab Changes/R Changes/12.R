# Create a numeric vector
data <- c(1, 2, 3, 4, 2, 3, 4, 5, 3, 2, 5)

# Calculate mean
sum <- 0
for(i in data){
  sum <- sum + i
}
mean_value <- sum / length(data)
print(paste("Mean: ", mean_value))

# Calculate median
sorted_data <- sort(data)
n <- length(sorted_data)
if(n %% 2 == 1){
  median_value <- sorted_data[(n+1)/2]
} else {
  median_value <- (sorted_data[n/2] + sorted_data[n/2 + 1]) / 2
}
print(paste("Median: ", median_value))

# Calculate mode
counts <- table(data)
mode_value <- as.numeric(names(counts)[counts == max(counts)])
print(paste("Mode: ", mode_value))

# Calculate variance
sum_sq_diff <- 0
for(i in data){
  sum_sq_diff <- sum_sq_diff + (i - mean_value)^2
}
variance_value <- sum_sq_diff / (length(data) - 1)

# Calculate standard deviation
std_dev_value <- sqrt(variance_value)
print(paste("Standard Deviation: ", std_dev_value))
