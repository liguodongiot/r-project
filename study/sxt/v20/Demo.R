
## R的高级数据管理

# 字符处理函数

#字符串的长度
nchar("abcde")

substr("abcde",3,5)

grep("a",c("a","b","a","c"))

#字符串替换
sub("a","A","abcde")

strsplit("abcde","c")

strsplit("abcde","")

paste("Today is ","Friday")

toupper("abc")
tolower("DAF")


# 其他实用函数

length(c(2,3,4))

seq(1,10,2)

rep(1:3, 3)

rep(1:4, 4:1)

cat("Hello","Tom!")

# 将函数应用于矩阵和数据框
a <- c(1.234,2.345,3.456,4.56)
round(a) #四舍五入

b <- matrix(runif(12),nrow=3)
b

#对数
log(b)

#均值
mean(b)

c <- matrix(rnorm(30),nrow=6)
# 1表示针对行 2表示针对列
apply(c, 1, mean)

apply(c, 2, mean)






