install.packages(c("ggplot2", "ggpubr", "tidyverse", "broom"))
#, "AICcmodavg"))
library(ggplot2)
library(ggpubr)
library(tidyverse)
library(broom)
library(AICcmodavg)
crop.data <- read.csv("E:/MCA/Unit iv/crop.data_.anova_/crop.data.csv", header = TRUE, colClasses = c("factor", "factor", "factor", "numeric"))
summary(crop.data)
one.way <- aov(yield ~ fertilizer, data = crop.data)

summary(one.way)

two.way <- aov(yield ~ fertilizer + density, data = crop.data)

summary(two.way)

interaction <- aov(yield ~ fertilizer*density, data = crop.data)

summary(interaction)

blocking <- aov(yield ~ fertilizer + density + block, data = crop.data)

summary(blocking)

library(AICcmodavg)

model.set <- list(one.way, two.way, interaction, blocking)
model.names <- c("one.way", "two.way", "interaction", "blocking")

aictab(model.set, modnames = model.names)
#AICctab(model.set, modnames = model.names)


par(mfrow=c(2,2))
plot(two.way)
par(mfrow=c(1,1))