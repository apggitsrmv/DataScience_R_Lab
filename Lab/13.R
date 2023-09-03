install.packages("readxl")
library(readxl)

# Load the data from the Excel file
data <- read_excel("data.xlsx", sheet = "Sheet1")

# Assuming the data is in a column named "Values," you can access it like this:
values <- data$Values
# Calculate the mean
mean_value <- mean(values)
print(paste("Mean:", mean_value))

# Calculate the median
median_value <- median(values)
print(paste("Median:", median_value))

# Custom function to calculate the mode
calculate_mode <- function(x) {
  uniq_x <- unique(x)
  uniq_x[which.max(tabulate(match(x, uniq_x)))]
}

# Calculate the mode
mode_value <- calculate_mode(values)
print(paste("Mode:", mode_value))
