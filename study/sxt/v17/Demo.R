## R基本的数据管理

# 如何处理缺失值
x <- c(1,2,3,NA)

is.na(x)



#############
manager <- c(1,2,3,4,5)
date <- c("10/24/08","10/28/08","10/1/08","10/12/08","5/1/09")
country <- c("UC","US","UK","UK","UK")
gender <- c("M","F","F","M","F")
age <- c(32,45,25,39,99)
q1 <- c(5,3,3,3,2)
q2 <- c(4,5,5,3,2)
q3 <- c(5,2,5,4,1)
q4 <- c(5,5,5,NA,2)
q5 <- c(5,5,2,NA,1)
survey <- data.frame(manager,date,country,gender,
                     age,q1,q2,q3,q4,q5,
                     stringsAsFactors = FALSE)
  
is.na(survey[,6:10])

survey[,6:10]

survey[4,9]

#判断是否为空 不能使用 survey == NA
is.na(survey[4,9])

# 空值不可计算和不可比较
x <- c(1,2,NA,4)
y <- x[1] + x[2] + x[3] + x[4]
y

#删除空值
y <- sum(x,na.rm = TRUE)
y


#na.omit删除空值会删除一整行
survey
data <- na.omit(survey)
data

# 日期值的使用

?as.Date


mydate <- as.Date("2016-10-16")
mydate

mydate2 <- c("01/05/2016","01/29/2016")
date <- as.Date(mydate2,"%m/%d/%Y")
date

Sys.Date()
date()

#日期转字符串
today <- Sys.Date()
today

format(today,format="%B %d %Y")


format(today,format="%y")


startdate <- as.Date("2003-01-23")
enddate <- as.Date("2011-09-18")

days <- enddate - startdate

days



# 数据类型的判断及转换

a <- c(2,5,6)
a

is.numeric(a)
is.vector(a)

b <- as.character(a)
b

is.numeric(b)
is.vector(b)


# 数据排序

survey

#,表示针对行排序，不加逗号表示列
data <- survey[order(survey$age),]
data


#多列排序
muldata <- survey[order(survey$gender,survey$age),]
muldata


#降序
datadesc <- survey[order(-survey$age),]
datadesc






