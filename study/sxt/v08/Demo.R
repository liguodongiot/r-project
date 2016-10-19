#数据的导入

mydata <- data.frame(age=numeric(0),
                     gender=character(0),
                     weight=numeric(0))

### 键盘导入数据
mydata <- edit(mydata)

mydata

#fix相对edit更简洁
fix(mydata)
mydata

### 文本文件导入数据
# 默认读取为ascii码
data <- read.table("d:/dadada.txt",header=TRUE, sep=",")
head(data)


#读取CSV文件
datacsv <- read.csv("d:/dadada.csv",header=TRUE, sep=",")
head(datacsv)


