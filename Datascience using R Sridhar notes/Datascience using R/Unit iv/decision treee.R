#Decision tree is a graph to represent choices and their results in form of a tree. 
#The nodes in the graph represent an event or choice and the edges of the graph represent
#the decision rules or conditions. It is mostly used in Machine Learning and Data Mining
#applications using R.
#Examples of use of decision tress is − predicting an email as spam or not spam, 
#predicting of a tumor is cancerous or predicting a loan as a good or bad credit risk 
#based on the factors in each of these. Generally, a model is created with observed data
#also called training data. Then a set of validation data is used to verify and improve the model. 
#R has packages which are used to create and visualize decision trees. For new set of predictor variable,
#we use this model to arrive at a decision on the category (yes/No, spam/not spam) of the data.

#The R package "party" is used to create decision trees.

#Install R Package
#Use the below command in R console to install the package. You also have to install 
#the dependent packages if any.

install.packages("party")
#The package "party" has the function ctree() which is used to create and analyze decison tree.

#Syntax
#The basic syntax for creating a decision tree in R is −
#library(party)
#ctree(formula, data)
#Following is the description of the parameters used −

#formula is a formula describing the predictor and response variables.

#data is the name of the data set used.

#Input Data
#We will use the R in-built data set named readingSkills to create a decision tree.
#It describes the score of someone's readingSkills if we know the variables 
#"age","shoesize","score" and whether the person is a native speaker or not.

#Here is the sample data.

# Load the party package. It will automatically load other
# dependent packages.
library(party)

#A data frame with 200 observations on the following 4 variables.
#nativeSpeaker a factor with levels no and yes, where yes indicates that 
#the child is a native
#speaker of the language of the reading test.
#age - age of the child in years.
#shoeSize - shoe size of the child in cm.
#score - raw score on the reading test.

# Print some records from data set readingSkills.
print(head(readingSkills))
print(readingSkills)
# Load the party package. It will automatically load other
# dependent packages.
library(party)


# Create the input data frame.
input.dat <- readingSkills[c(1:150),]

# Give the chart file a name.
#png(file = "decision_tree.png")

# Create the tree.
output.tree <- ctree(
  nativeSpeaker ~ age + shoeSize + score, 
  data = input.dat)
plot(output.tree)

#Conclusion
#From the decision tree shown above we can conclude that anyone 
#whose readingSkills score is less than 38.3 and age is more than 6 is not a native Speaker.

# Create the tree.
output.tree <- ctree(
  nativeSpeaker ~ age + score, 
  data = input.dat)
plot(output.tree)
output.tree <- ctree(
  nativeSpeaker ~ shoeSize + score, 
  data = input.dat)
# Plot the tree.
plot(output.tree)

library(party)
traindata <- read.table('E:/MCA/Unit iv/titanic/train.csv', sep=",", header= TRUE)
head(traindata)
output.tree <- ctree(
  Survived~Pclass, 
  data = traindata)
plot(output.tree)


output.tree <- ctree(
  Survived~Pclass+SibSp, 
  data = traindata)
plot(output.tree)
