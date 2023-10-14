# Live Demo
library("MASS")

# Print the structure of the Cars93 dataset
print(str(Cars93))

# The above result shows the dataset has many Factor variables, which can be considered as categorical variables.
# For our model, we will consider the variables "AirBags" and "Type".
# We aim to find out any significant correlation between the types of cars sold and the type of Air bags they have.
# If a correlation is observed, we can estimate which types of cars might sell better with what types of air bags.

# Live Demo
# Load the library.
library("MASS")

# Create a data frame from the main data set.
car.data <- data.frame(AirBags = Cars93$AirBags, Type = Cars93$Type)

# Create a table with the needed variables.
# This table will show the count of each combination of AirBags and Type.
car.table <- table(car.data$AirBags, car.data$Type) 
print(car.table)

# Perform the Chi-Square test.
# The chi-squared test of independence is used to determine if there is a significant association between two categorical variables.
chi_square_result <- chisq.test(car.table)
print(chi_square_result)

# Mosaic plot
mosaicplot(car.table, main = "Mosaic Plot of AirBags and Type", color = TRUE)
