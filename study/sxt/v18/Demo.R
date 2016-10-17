##R基本的数据管理


# 数据集的合并
x <- matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3)
x

y <- x
y

#按列进行合并
z <- cbind(x,y)
z

#相当于数据库操作的内连接
?merge

## example of using 'incomparables'
x <- data.frame(k1 = c(NA,NA,3,4,5), k2 = c(1,NA,NA,4,5), data = 1:5)
y <- data.frame(k1 = c(NA,2,NA,4,5), k2 = c(NA,NA,3,4,5), data = 1:5)
x
y

#指定哪一个属性进行内连接
merge(x, y, by = c("k1","k2")) # NA's match


merge(x, y, by = "k1") # NA's match, so 6 rows


merge(x, y, by = "k2", incomparables = NA) # 2 rows



#按行进行连接
x <- matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3)
y <- x

z <- rbind(x,y)
z


# 数据集取子集
x
#2~3列
x[,2:3]


survey

q <- survey[,6:10]
q

x <- survey[,-2]
x

newdata <- subset(survey,age>=35 | age<24,
                  select=c(q1,q2,q3,q4))
newdata




# 随机抽样函数
# mysample <- sample(x,size,replace = FALSE)

#从5行里面取到三个随机样本，FALSE表示不放回的抽样
mysample <- survey[sample(5,3,replace=FALSE),]
mysample







