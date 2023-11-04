df <- read.csv("Combined.csv")
# Create a histogram for the "SALARY" column
hist(df$SALARY,
     main = "Salary Distribution",
     xlab = "Salary",
     ylab = "Frequency",
     col = "skyblue",
     border = "black",
     xlim = c(min(df$SALARY), max(df$SALARY)),
     breaks = 20,  # You can adjust the number of bins
     probability = TRUE)

# Optionally, you can add labels and a legend if needed
legend("topright", legend = "Salary", fill = "skyblue")
