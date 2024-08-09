#Random Forest using Titanic Dataset
install.packages("caret", dependencies = TRUE)
install.packages("randomForest")
library(caret)
library(randomForest)
traindata <- read.table('E:/MCA/Unit iv/titanic/train.csv', sep=",", header= TRUE)
head(train)
testdata <- read.table('E:/MCA/Unit iv/titanic/test.csv', sep = ",", header = TRUE)
head(testdata)
table(traindata[,c('Survived', 'Pclass')])
install.packages("fields")
library(fields)
bplot.xy(traindata$Survived, traindata$Age)
summary(traindata$Age)
bplot.xy(traindata$Survived, traindata$Fare)
summary(traindata$Fare)
# Converting ‘Survived’ to a factor
traindata$Survived <- factor(traindata$Survived)
# Set a random seed
set.seed(51)
# Training using ‘random forest’ algorithm

library(fields)
library(caret)
#plot(output.forest)
#model<-train(Survived~Pclass+Sex+SibSp,data=traindata,"rf",trControl = trainControl(method = "cv"))
model <- train(Survived ~ Pclass + Sex + SibSp +
                 Embarked + Parch + Fare, # Survived is a function of the variables we decided to include
               data = train, # Use the train data frame as the training data
               method = 'rf',# Use the 'random forest' algorithm
               trControl = trainControl(method = 'cv', # Use cross-validation
                                        number = 5)) # Use 5 folds for cross-validation
print(model)
plot(model)

summary(test)
test$Fare <- ifelse(is.na(test$Fare), mean(test$Fare, na.rm = TRUE), test$Fare)

test$Survived <- predict(model, newdata = test)
print(test$Survived)
library(randomForest)
output.forest <- randomForest(Survived~Pclass+Sex+SibSp+ Embarked + Parch + Fare,data=traindata)
# View the forest results.
print(output.forest) 
plot(output.forest)

# Importance of each predictor.
print(importance(output.forest,type = 2)) 