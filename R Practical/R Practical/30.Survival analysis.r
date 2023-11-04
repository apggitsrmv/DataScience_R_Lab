install.packages("survival")
library("survival")

survfit(Surv(pbc$time,pbc$status == 2)~1)
plot(survfit(Surv(pbc$time,pbc$status == 2)~1),xlab="Days",ylab="Survival Probability")

library(survminer)
ggsurvplot(
  fit = survfit(Surv(time, status) ~ 1, data = pbc), 
  xlab = "Days", 
  ylab = "Overall survival probability") 

head(lung)
survfit(Surv(lung$time,lung$status == 2)~1)

plot(survfit(Surv(lung$time,lung$status == 2)~1),xlab="Days",ylab="Survival Probability")
