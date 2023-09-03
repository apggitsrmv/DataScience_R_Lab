# Load your dataset
countdata <- read.csv("mycountdata.csv")

# Display the first few rows of the dataset
head(countdata)

# Summary statistics of the dataset
summary(countdata)

# Structure of the dataset
str(countdata)

# Fit a Poisson regression model
poisson_model <- glm(count ~ x1 + x2 + x3, data = countdata, family = poisson(link = "log"))

# Summarize the Poisson regression model
summary(poisson_model)

# Create new data for prediction
new_data <- data.frame(x1 = 2.5, x2 = 1.8, x3 = 3.2)

# Predict the count for the new data
predicted_count <- predict(poisson_model, newdata = new_data, type = "response")

# Print the predicted count
print(paste("Predicted Count:", predicted_count))
