
## R的基本图形

#饼图

par(mfrow=c(2,2))
x <- c(10,12,4,16,8)
lab <- c("US","UK","Australia","Germany","France")
pie(x,lab,main="Simple Pie Chart")
pct <- round(x/sum(x)*100)
pct


lab1 <- paste(lab," ",pct, "%",sep=" ")
lab1
pie(x,lab1,col=rainbow(length(lab1)),
    main="Pie Chart with Percentage")

#3D饼图
install.packages("plotrix")
library(plotrix)

pie3D(x,explode=0.1, main="3D Pie Chart")

#扇形
fan.plot(x,labels = lab,main="Fan plat")



