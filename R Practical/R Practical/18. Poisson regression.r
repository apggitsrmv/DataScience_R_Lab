input <- warpbreaks
print(head(input))

output <-glm(formula = breaks ~ wool+tension, data = warpbreaks,
             family = poisson)
print(summary(output))
output1 <-glm(formula = breaks ~ wool+tension, data = warpbreaks,
              family = quasipoisson(link="log"))
print(summary(output1))

mtcars
input <- mtcars[,c("am","cyl","hp","wt")]

print(head(input))
input <- mtcars[,c("am","cyl","hp","wt")]
am.data = glm(formula = am ~ cyl + hp + wt, data = input, family = poisson)
print(summary(am.data))
