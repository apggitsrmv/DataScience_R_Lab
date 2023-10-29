library(caret)
data(iris)

# Define train control for k fold cross validation
train_control <- trainControl(method="cv", number=10)
# Fit Naive Bayes Model
model <- train(Species~., data=iris, trControl=train_control, method="nb")
# Summarise Results
print(model)
# Fit Random Forest Model
model <- train(Species~., data=iris, trControl=train_control, method="rf")
# Summarise Results
print(model)