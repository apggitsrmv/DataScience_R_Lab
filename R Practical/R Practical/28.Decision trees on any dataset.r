install.packages("party")
library(party)
print(head(readingSkills))
print(readingSkills)
library(party)
input.dat <- readingSkills[c(1:150),]
output.tree <- ctree(
  nativeSpeaker ~ age + shoeSize + score, 
  data = input.dat)
plot(output.tree)
output.tree <- ctree(
  nativeSpeaker ~ age + score, 
  data = input.dat)
plot(output.tree)
output.tree <- ctree(
  nativeSpeaker ~ shoeSize + score, 
  data = input.dat)
plot(output.tree)
