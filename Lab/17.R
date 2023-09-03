# Load your dataset
mydata <- read.csv("mydata.csv")

# Display the first few rows of the dataset
head(mydata)

# Summary statistics of the dataset
summary(mydata)

# Structure of the dataset
str(mydata)

# Fit a logistic regression model
logistic_model <- glm(outcome ~ x1 + x2 + x3, data = mydata, family = binomial(link = "logit"))

# Summarize the logistic regression model
summary(logistic_model)

# Create new data for prediction
new_data <- data.frame(x1 = 2.5, x2 = 1.8, x3 = 3.2)

# Predict the probability of the outcome being 1 for the new data
predicted_prob <- predict(logistic_model, newdata = new_data, type = "response")

# Threshold the probabilities to make binary predictions (0 or 1)
predicted_class <- ifelse(predicted_prob > 0.5, 1, 0)

# Print the predicted probability and class
print(paste("Predicted Probability of Outcome 1:", predicted_prob))
print(paste("Predicted Class:", predicted_class))
