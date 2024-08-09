#make this example reproducible 
set.seed(10)

#create dataset
data <- data.frame(technique = rep(c("A", "B", "C"), each = 30),
                   current_grade = runif(90, 65, 95),
                   exam = c(runif(30, 80, 95), runif(30, 70, 95), runif(30, 70, 90)))

#view first six lines of dataset
head(data)
summary(data)

#load dplyr
library(dplyr)

data %>%
  group_by(technique) %>%
  summarise(mean_grade = mean(current_grade),
            sd_grade = sd(current_grade),
            mean_exam = mean(exam),
            sd_exam = sd(exam))

boxplot(exam ~ technique,
        data = data,
        main = "Exam Score by Studying Technique",
        xlab = "Studying Technique",
        ylab = "Exam Score",
        col = "steelblue",
        border = "black"
)


boxplot(current_grade ~ technique,
        data = data,
        main = "Current Grade by Studying Technique",
        xlab = "Studying Technique",
        ylab = "Current Grade",
        col = "steelblue",
        border = "black"
)

#fit anova model
anova_model <- aov(current_grade ~ technique, data = data)
#view summary of anova model
summary(anova_model)


anova_model <- aov(current_grade ~ technique+exam, data = data)
#view summary of anova model
print(summary(anova_model))

anova_model <- aov(technique~ current_grade+exam, data = data)
#view summary of anova model
print(summary(anova_model))
