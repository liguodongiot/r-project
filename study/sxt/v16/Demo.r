###R基本的数据管理
#一个示例-问题
#处理空值，处理错误值，重编码



#在数据框中创建新变量
mydata <- data.frame(x1=c(2,3,4,5),x2=c(2,5,7,9))
mydata

sumx <- mydata$x1+mydata$x2
ls()

mydata$sumx <- mydata$x1+mydata$x2
mydata

mydata$meanx <- (mydata$x1+mydata$x2)/2
mydata

#变量的重编码

#建立经理人问卷调查的数据框
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
survey

#更改不符合岁数范围的经理人
survey$age[survey$age==99] <- NA
survey

survey$age[survey$age>75] <- "老年人"
survey$age[survey$age>45 & survey$age<=75] <- "中年人"
survey$age[survey$age<=45] <- "青年人"
survey


#变量的重命名
#方式1
fix(survey)
#方式2
names(survey)
names(survey)[7] <- "question2"
survey

