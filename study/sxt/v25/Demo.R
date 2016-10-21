
## R的基本图形

#核密度图
x <- density(mtcars$mpg)
mtcars$mpg
x
plot(x)


#不同核密度图之间的比较
attach(mtcars)

install.packages("sm")
library(sm)

mpg
cyl

head(mtcars)

sm.density.compare(mpg,cyl,xlab="Mile per gallon")



