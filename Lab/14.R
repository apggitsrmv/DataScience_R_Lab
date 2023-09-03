# Create two sample vectors X and Y
X <- c(1, 2, 3, 4, 5)
Y <- c(2, 3, 4, 5, 6)

# Calculate the mean of X and Y
mean_X <- mean(X)
mean_Y <- mean(Y)

# Calculate the numerator of the correlation formula
numerator <- sum((X - mean_X) * (Y - mean_Y))

# Calculate the denominator of the correlation formula
denominator_X <- sqrt(sum((X - mean_X)^2))
denominator_Y <- sqrt(sum((Y - mean_Y)^2))

# Calculate the correlation coefficient
correlation <- numerator / (denominator_X * denominator_Y)

# Print the correlation coefficient
print(correlation)

