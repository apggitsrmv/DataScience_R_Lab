
#Live Demo
input <- mtcars[,c("am","mpg","hp")]
print(head(input))

#Live Demo
# Get the dataset.
input <- mtcars

# Create the regression model.
result <- aov(mpg~hp*am,data = input)
print(summary(result))

#Live Demo
# Get the dataset.
input <- mtcars

# Create the regression model.
result <- aov(mpg~hp+am,data = input)
print(summary(result))

#Live Demo
# Get the dataset.
input <- mtcars

# Create the regression models.
result1 <- aov(mpg~hp*am,data = input)
result2 <- aov(mpg~hp+am,data = input)

# Compare the two models.
print(anova(result1,result2))
 

print(input)
result1 <- aov(mpg~hp*cyl,data = input)
result2 <- aov(mpg~hp+cyl,data = input)

# Compare the two models.
print(anova(result1,result2))
