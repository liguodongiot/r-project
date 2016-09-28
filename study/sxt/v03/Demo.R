
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


#
head(mtcars)

#lm 拟合线性模型
lm(mpg~wt,data=mtcars)


