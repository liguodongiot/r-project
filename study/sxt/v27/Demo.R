
## R总结

install.packages("DMwR")
library(DMwR)

head(algae)

summary(algae)

hist(algae$mxPH)
line(density(algae$mxPH,na.rm = T))
lines(density(algae$mxPH,na.rm = T))

hist(algae$mxPH,prob=T,ylim=0:1)
lines(density(algae$mxPH,na.rm = T))


