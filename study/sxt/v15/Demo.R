
#图形组合
#par()函数的mfrow参数
#layout()函数

attach(mtcars)

opar <- par(no.readonly = TRUE)
par(mfrow=c(2,2))
plot(wt,mpg,main = "wt vs mpg")
plot(wt,disp,main = "wt vs disp")
hist(wt,main="Histogram of wt")
boxplot(wt,main="Boxplot of wt")
par(opar)
detach(mtcars)

attach(mtcars)
opar <- par(no.readonly = TRUE)
par(mfrow=c(3,1))
hist(wt)
hist(mpg)
hist(disp)
par(opar)
detach(mtcars)

attach(mtcars)
# 两行两列，c(1,1,2,3)第一行画第一个图形
# 第二行第一列画第二个
# 第二行第二列画第三个图形
layout(matrix(c(1,1,2,3),2,2,byrow=TRUE))
hist(wt)
hist(mpg)
hist(disp)
par(opar)
detach(mtcars)


#宽度和高度控制

attach(mtcars)
#第一列第二列，第一行第二行
#定义宽度和高度比值
layout(matrix(c(1,1,2,3),2,2,byrow=TRUE),widths = c(3,1),heights = c(2,1))
hist(wt)
hist(mpg)
hist(disp)
par(opar)
detach(mtcars)


#图形布局的精细程度
attach(mtcars)
opar <- par(no.readonly = TRUE)
par(fig=c(0,0.8,0,0.8))
plot(mtcars$wt,mtcars$mpg,xlab = "Gallon",ylab = "weight")
par(fig=c(0.65,1,0,0.8),new=TRUE)
boxplot(mtcars$mpg,axes=FALSE)
par(fig=c(0,0.8,0.55,1),new=TRUE)
boxplot(mtcars$wt,horizontal = TRUE,axes=FALSE)
par(opar)
detach(mtcars)





