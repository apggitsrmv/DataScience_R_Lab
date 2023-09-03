# Create a sample dataset
data <- c(2, 4, 4, 4, 5, 5, 7, 9)

# Calculate the mean
mean_value <- mean(data)
print(paste("Mean:", mean_value))

# Calculate the median
median_value <- median(data)
print(paste("Median:", median_value))

# Custom function to calculate the mode
calculate_mode <- function(x) {
  uniq_x <- unique(x)
  uniq_x[which.max(tabulate(match(x, uniq_x)))]
}

# Calculate the mode
mode_value <- calculate_mode(data)
print(paste("Mode:", mode_value))

# Calculate the standard deviation
std_deviation <- sd(data)
print(paste("Standard Deviation:", std_deviation))

