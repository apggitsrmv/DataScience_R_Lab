# Load the mtcars dataset
data(mtcars)

# Display the first few rows of the dataset
head(mtcars)

# Summary statistics of the dataset
summary(mtcars)

# Structure of the dataset
str(mtcars)

# Fit a multiple linear regression model
lm_model <- lm(mpg ~ hp + wt + cyl, data = mtcars)

# Summarize the multiple linear regression model
summary(lm_model)

# Create new data for prediction
new_data <- data.frame(hp = 150, wt = 2.5, cyl = 6)

# Predict mpg for the new data
predicted_mpg <- predict(lm_model, newdata = new_data)

# Print the predicted mpg
print(paste("Predicted MPG for new data:", predicted_mpg))

