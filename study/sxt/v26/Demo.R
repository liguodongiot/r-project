
## R的基本图形

# 箱线图

# 分位数
# 最小值，四分位数，中位数，四分位数，最大值

boxplot(mtcars$mpg,main="Box plot",
        ylab="Miles per gallon")

#多个箱线图比较
boxplot(mpg~cyl,data = mtcars,
        main="Car mileage data",
        xlab="Number of cylinders",
        ylab="Miles per gallon")



