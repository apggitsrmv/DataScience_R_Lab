library("MASS")
print(str(Cars93))
library("MASS")
car.data<-data.frame(Cars93$Manufacturer,Cars93$AirBags)
print(car.data)
car.data = table(Cars93$Manufacturer, Cars93$AirBags)
print(car.data)
print(chisq.test(car.data))