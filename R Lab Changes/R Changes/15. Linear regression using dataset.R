cost_function <- function(X, y, theta) {
  m <- nrow(X)
  prediction <- X %*% theta
  cost <- (1 / (2 * m)) * sum((prediction - y)^2)
  return(cost)
}

# Define the gradient descent function
gradient_descent <- function(X, y, theta, alpha, iterations) {
  m <- nrow(X)
  cost_history <- numeric(iterations)
  
  for (i in 1:iterations) {
    prediction <- X %*% theta
    error <- prediction - y
    descent <- t(X) %*% error
    theta <- theta - (alpha * (1 / m) * descent)
    cost_history[i] <- cost_function(X, y, theta)
  }
  
  list(theta = theta, cost_history = cost_history)
}

# Load the dataset
data(mtcars)

# Prepare the data
X <- as.matrix(cbind(1, mtcars$cyl))
y <- as.matrix(mtcars$mpg)

# Initialize parameters
theta <- matrix(c(0, 0), nrow = 2)
alpha <- 0.01
iterations <- 2000

# Run gradient descent
result <- gradient_descent(X, y, theta, alpha, iterations)

# Print the final parameters
print(result$theta)

# Plot the cost history
plot(result$cost_history, type = "l", xlab = "Iteration", ylab = "Cost")