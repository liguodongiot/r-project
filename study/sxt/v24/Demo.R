
## R的基本图形

# 直方图


x<- mtcars$mpg
x
hist(x)

hist(x,breaks = 12, col="red",xlab = "Miles Per Callon")

#freq=FALSE 展示概率密度 ,默认是频数
hist(x,freq=FALSE,breaks=12, col="green",
     xlab="Mile Per Callon")

#轴虚图
rug(jitter(x))

#轴虚线
lines(density(x),col="red",lwd=2)

