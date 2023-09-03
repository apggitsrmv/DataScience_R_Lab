# Load the mtcars dataset
data(mtcars)

# Display the first few rows of the dataset
head(mtcars)

# Summary statistics of the dataset
summary(mtcars)

# Structure of the dataset
str(mtcars)

# Fit a linear regression model
lm_model <- lm(mpg ~ hp, data = mtcars)

# Summarize the linear regression model
summary(lm_model)

# Predict mpg for a new car with 150 hp
new_data <- data.frame(hp = 150)
predicted_mpg <- predict(lm_model, newdata = new_data)

# Print the predicted mpg
print(paste("Predicted MPG for a car with 150 hp:", predicted_mpg))
