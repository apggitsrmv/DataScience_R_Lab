install.packages("randomForest")

library(party)
print(head(readingSkills))
library(randomForest)
output.forest <- randomForest(nativeSpeaker ~ age + shoeSize + score, 
                              data = readingSkills)

print(output.forest) 
plot(output.forest)

print(importance(output.forest,type = 2))
