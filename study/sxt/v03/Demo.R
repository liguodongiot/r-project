
###包的使用
#查看可用的包
library()

#查看帮助
help(package="base")

#安装包
install.packages("car")

#导入包
library(car)

#更新包
update.packages()


### 结果的重用
head(mtcars)

#lm 拟合线性模型
lm(mpg~wt,data=mtcars)


result <- lm(mpg~wt,data=mtcars)
summary(result)
plot(result)

###R处理大数据集
#1、专门的用于大数据的分析包，如lm()是做线性拟合的函数，而biglm()则能以内存高效的方式实现大型数据的线性模型拟合。
#2、R与大数据处理平台的结合，如RHadoop,RHive,RHipe等



