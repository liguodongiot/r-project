##R的高级数据管理

# 数学函数

#绝对值
abs(-3)

#平方根
sqrt(9)

#不小于x的最小整数
ceiling(3.4)

#不大于x的最大整数
floor(3.56)

#四舍五入
round(3.55)

sin(4)

cos(0)

log(10)


# 统计函数

x <- c(2,3,4,1,3,7,4,9,10)

#均值
mean(x)

sum(x)

n <- length(x)
n
meanres <- sum(x)/n
meanres

#标准差
sd(x)

#方差
var(x)

max(x)

min(x)

# 将数据进行标准化
# 默认是均值为0，标准差为1
scale(x)



# 概率函数
x <- pretty(c(-3,3),30)
x
#正态分布
y <- dnorm(x)
plot(x,y)

#50个均值为20，标准差为8的正态分布随机数
rnorm(50,mean = 20,sd=8)

#随机生成5个正态分布尾随机数  结果都不一样
runif(5)
runif(5)

#生成的结果一样的尾随机数
set.seed(12)
runif(5)
set.seed(12)
runif(5)





