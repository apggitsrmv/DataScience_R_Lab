# Read data from guna1.csv (replace "guna1.csv" with your actual file path)
data <- read.csv("guna1.csv")

# Create a box plot for a specific column (replace "ColumnName" with the column name you want to plot)
boxplot(data$height, main = "Box Plot", ylab = "Values")








# Read data from guna1.csv (replace "guna1.csv" with your actual file path)
data <- read.csv("guna1.csv")

# Specify the column names you want to include in the box plot
columns_to_plot <- c("Attitude", "Apptitude", "height", "weight")

# Create an empty list to store the data from selected columns
selected_data <- list()

# Loop through the selected columns and stack the data
for (column in columns_to_plot) {
  selected_data[[column]] <- data[[column]]
}

# Create a box plot for the selected columns
boxplot(selected_data, main = "Box Plot for Multiple Columns", ylab = "Values")
