
#矩阵和向量
#c(), length(), mode(),rbind(),cbind()

x1 = c(2,4,6,8,0)
x2 = c(1,3,5,7,9)
length(x1)
mode(x1)
x1
x1[3]

a1=c(1:100)
length(a1)

#行
rbind(x1,x2)

m1=rbind(x1,x2)
m1

#列
cbind(x1,x2)

#求平均值，和，连乘，最值，方差，标准差

#函数mean sum min max var sd prod
x=c(1:100)
mean(x)
sum(x)
max(x)
min(x)
#方差
var(x)
#连乘
prod(x)
#标准差
sd(x)


#产生向量
1:10
1:10-1
1:10*2
2:60*2+1

a=2:60*2+1
a
a[5]
a[-5]

a[1:5]
a[-(1:5)]
a[c(2,4,7)]
a[3:8]
a[a<20]
a[a>30 & a<50]
a[a[3]]

#seq()

seq(5,20)
seq(5,121,by=2)
seq(5,121,length=10) #分成10等分

#产生字母序列letters
letters[1:30]

#which()
a=c(2,3,4,2,5,1,6,3,2,5,8,5,7,3)
which.max(a)
a[which.max(a)]

which(a==2)
a[which(a==2)]

which(a>5)
a[which(a>5)]

#反转，排序
#rev()，sort()
a=1:20
a

rev(a)
a=c(2,3,4,2,5,1,6,3,2,5,8,5,7,3)
sort(a)
rev(sort(a))

#生成矩阵
#matrix()
a1=c(1:12)
matrix(a1,nrow=3,ncol=4)
matrix(a1,nrow=4,ncol=3)
matrix(a1,nrow=4,ncol=3,byrow=T)

#矩阵运算
#函数t()，矩阵加减 
a=matrix(1:12,nrow=3,ncol=4)
a
t(a)
a=b=matrix(1:12,nrow=3,ncol=4)
a+b
a-b

#矩阵相乘，函数diag()
a=matrix(1:12,nrow=3,ncol=4)
b=matrix(1:12,nrow=4,ncol=3)
a%*%b

a=matrix(1:16,nrow=4,ncol=4)
a
#取出方形矩阵中的对角线
diag(a)
# 生成以向量diag(a)为对角线，其他值为0的方形矩阵
diag(diag(a))
#生成节数为制定数值的向量
diag(4)



#矩阵求逆，rnorm(),solve()
a=matrix(rnorm(16),4,4)
a

solve(a)

#解线性方程组
#函数solve(a,b)
a=matrix(rnorm(16),4,4)
a

b=c(1:4)
b

solve(a,b)

#矩阵的特征值与特征向量
#eigen

a=diag(4)+1
a

a.e=eigen(a,symmetric=T)
a.e

#t() 矩阵的转置
a.e$vectors%*%diag(a.e$values)%*%t(a.e$vectors)

################
#数据的R语言表示-数据框

#矩阵形式，但列可以不同数据类型
#每列是一个变量，每行是一个观测值

x1=c(10,13,45,26,23,12,24,78,23,43,31,56)
x2=c(20,65,32,32,27,87,60,13,42,51,77,35)
x=data.frame(x1,x2)
x

(x=data.frame('重量'=x1,'运费'=x2))

#散点图plot
plot(x)


#读取文本数据
#先设置工作目录，把文本文件放于该目录下
setwd("D:\\")
getwd()
(x=read.table("mark.txt"))

#读剪贴板
#文本或excel的数据均可通过剪贴板操作
y <- read.table("clipboard",header=F)
y

z <- read.table("clipboard",header=T)
z

#读excel文件数据
#方法1：先把excel另存为空格分隔的prn文本格式再读
w <- read.table("d:\\test.prn",header=F)
w


#方法2：安装RODBC,再通过ODBC读
install.packages("RODBC")
library(RODBC)

local({pkg<-select.list(sort(.packages(all.available = TRUE)),graphics = TRUE) 
    if(nchar(pkg)) library(pkg,character.only = TRUE)})

#注：xlsx不能被读取
z <- odbcConnectExcel("d:\\test.xls")
(w<-sqlFetch(z,"Sheet1",colnames = FALSE))


#循环语句
#for
for(i in 1:59) {a[i]=i*2+3}
a


b=0
for(i in 1:59) {a[i]=i*2+3;b[i]=i*5+4}
b



#while
a[1]=5
i=1
while(a[i]<121) {i=i+1;a[i]=a[i-1]+2}
a



#R脚本
#source()函数
#print()函数
#绝对路径
source("d:\\test.r")

#相对路径
source("study\\dataguru\\datavisual\\v01\\test.r")


#分布函数
#正态分布函数rnorm()
#泊松分布函数rpois()
#指数分布函数rexp()
#Gamma分布函数rgamma()
#均匀分布函数runif()
#二项分布函数rbinom()
#几何分布函数rgeom()
