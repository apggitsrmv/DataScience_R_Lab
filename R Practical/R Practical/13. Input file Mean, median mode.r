install.packages("xlsx")
library(xlsx)

excel_file <- "input.xlsx"

data <- read.xlsx(excel_file, sheetIndex = 1)

print(data)

column_name <- "salary"

column_mean <- mean(data[[column_name]], na.rm = TRUE)
cat("Mean of", column_name, "is:", column_mean, "\n")

column_median <- median(data[[column_name]], na.rm = TRUE)
cat("Median of", column_name, "is:", column_median, "\n")

column_mode <- as.numeric(names(sort(table(data[[column_name]]), decreasing = TRUE)[1]))
cat("Mode of", column_name, "is:", column_mode, "\n")
