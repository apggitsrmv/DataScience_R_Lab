poisson_regression <- function(X, y, learning_rate, num_iterations) {
  # Initialize parameters
  theta <- rep(0, ncol(X))
  
  # Gradient Descent
  for (i in 1:num_iterations) {
    # Compute the Poisson probability
    y_hat <- exp(X %*% theta)
    
    # Compute the gradient
    gradient <- t(X) %*% (y_hat - y)
    
    # Update the parameters
    theta <- theta - learning_rate * gradient
  }
  
  return(theta)
}
