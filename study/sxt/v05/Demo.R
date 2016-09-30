
#数据框
patientID <- c(1,2,3,4)
age <- c(25,34,28,52)
diabetes <- c("Type1","Type2","Type3","Type4")
status <- c("poor","Improved","Excllent","Poor")
patientData <- data.frame(patientID,age,diabetes,status)
patientData
patientData[1:3]
patientData[c("diabetes","status")]
patientData$age


head(mtcars)
mtcars$mpg

#将数据框加入搜索路径
attach(mtcars)
mpg

#移除
detach(mtcars)

with(mtcars,{})
with(mtcars,{
  k <- mpg
  k
})


#因子
xx <- c(1,2,3,2)
xx
xx <- factor(xx)
xx


#列表

g <- "My First Love"
h <- c(2,34,67,32,22)
j <- matrix(1:20,nrow=2)
k <- c("one","three","two")
mylist <- list(g,h,j,k)

#访问列表元素
mylist[[2]]




