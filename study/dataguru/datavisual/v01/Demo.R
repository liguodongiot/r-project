
# 综合性例子
# 模拟产生统计专业同学的名单（学号区分），记录数学分析，
#线性代数，概率统计三科成绩，然后进行一些统计分析。

#模拟学号
num=seq(10378001,10378100)
num

#模拟成绩
# runif 产生均匀分布的随机数
x1=round(runif(100,min = 80,max = 100))
x1


# rnorm 产生正态分布的随机数
x2 <- round(rnorm(100,mean = 80,sd = 7))
x2

# 正态分布的产生的随机数没办法指定上下限
x3 <- round(rnorm(100,mean = 83,sd = 18))
x3

#将超过100分的成绩变成100分
x3[which(x3>100)]=100
x3

#合成数据框并保存到硬盘
#data.frame()
#write.table()

x=data.frame(num,x1,x2,x3)
x

write.table(x,file = "d:\\mark.txt",col.names = F,row.names = F,sep=" ")


#计算各科平均分
#函数mean(),colMeans(),apply()

#mean(x)  mean(<data.frame>) 已经过时了

colMeans(x)

colMeans(x)[c("x1","x2","x3")]

apply(x, 2, mean)

#求最高最低分
apply(x,2,max)
apply(x,2,min)

#求每个人的总分
# 1表示行 2表示列
apply(x[c("x1","x2","x3")],1,sum)

#总分最高的同学
#先找到下标，再根据下标找到学号
which.max(apply(x[c("x1","x2","x3")], 1, sum))

x$num[which.max(apply(x[c("x1","x2","x3")], 1, sum))]



####################
#图表分析

#对x1进行直方图分析
#hist
hist(x$x1)

#探索各科成绩的关联关系
#散点图plot()
plot(x1,x2)
plot(x$x1,x$x2)

#列链表分析
#列联函数table()，柱状图绘制函数barplot()
x$x1
table(x$x1)
barplot(table(x$x1))

#饼图
#饼图绘制函数pie()
pie(table(x$x1))

#箱尾图（箱线图）
#箱子的上线横线为样本的25%和75%的分位数
#箱子中间的横线为样本的中位数
#上下延伸的直线称为尾线，尾线的尽头为最高值和最低值
#异常值
boxplot(x$x1,x$x2,x$x3)

#指定了颜色和缺口
boxplot(x[2:4],col=c("red","green","blue"),notch = T)

#水平放置
boxplot(x$x1,x$x2,x$x3,horizontal = T)


#星相图
#每个观测单位的数值表示为一个图形
#每个图的每个角表示一个变量，字符串类型会标注在图的下方
#角线的长度表达值的大小
stars(x[c("x1","x2","x3")])

#雷达图
stars(x[c("x1","x2","x3")],full=T,draw.segments = T)

#full=F 表示画半圆 T表示全圆
stars(x[c("x1","x2","x3")],full=F,draw.segments = T)

#脸谱图
install.packages("aplpack")
library(aplpack)

#用五官的宽度和高度来描绘数值
#人对脸谱高度敏感和强记忆
#适合较少样本的情况
faces(x[c("x1","x2","x3")])

#其他脸谱图
install.packages("TeachingDemos")
library(TeachingDemos)
faces2(x)
faces(x[c("x1","x2","x3")])

#茎叶图
x$x1
table(x$x1)

stem(x$x1)


#QQ图
#可用于判断是否是正态分布
#直线的斜率是标准差，截距是均值
#点的散步越接近直线，则越接近正态分布
qqnorm(x1)
qqline(x1)

qqnorm(x3)
qqline(x3)


# 散点图

plot(x$x1,x$x2,main="数学分析与线性代数成绩的关系",
     xlab = "数学分析",ylab = "线性代数",
     xlim=c(60,100),ylim=c(60,100),
     xaxs="i", # Set x axis style as internal(i表示内置的风格)
     yaxs="i", # Set y axis style as internal
     col="red", # Set the color of plotting symbol to red
     pch=19 # Set the plotting symbol to filled dots
     )

#连线图
a=c(2,3,4,5,6)
b=c(4,7,8,9,12)
plot(a,b,type="l") #l表示线，p表示点...

#多条曲线的效果

Tokyo=c(200,250,230,270,700,400,500,300,350,220,180,210)
NewYork=c(100,210,230,270,400,500,400,350,330,220,210,230)
London=c(150,270,230,270,300,400,600,200,250,220,190,200)
Berlin=c(500,470,330,270,200,230,220,240,250,270,300,400)

rain=data.frame(Tokyo,NewYork,London,Berlin)

plot(rain$Tokyo,type = "l",col="red",
     ylim = c(0,1000),
     main="Monthly Rainfall in major cities",
     xlab="Month of Year",
     ylab="Rainfall(mm)",
     lwd=2)
lines(rain$NewYork,type="l",col="blue",lwd=2)
lines(rain$London,type="l",col="green",lwd=2)
lines(rain$Berlin,type="l",col="orange",lwd=2)


#密度图
#density

plot(density(rnorm(1000)))

#########################
#R内置数据集

#列出内置数据
data()

#汽车数据集
mtcars

#热力图
heatmap(as.matrix(mtcars),
        Rowv=NA,
        Colv=NA,
        col=heat.colors(256),
        scale="column",
        margins = c(2,8),
        main="Car characteristics by Model")

#鸢尾花数据集iris
#Sepal 花萼
#Petal 花瓣
#Species 种属

iris


#向日葵散点图
#用来克服散点图中数据点重叠问题
#在有重叠的地方用一朵“向日葵花”的花瓣数目来表示重叠数据的个数

sunflowerplot(iris[,3:4],
              col="gold",
              seg.col="red")

#散点图集
#遍历样本中全部的变量配对 画出二元图 2^4
#直观地了解所有变量之间的关系

pairs(iris[,1:4])

#用plot实现同样的效果

plot(iris[,1:4],
     main="Relationships between characteristics of iris flowers",
     pch=19,
     col="blue",
     cex=0.9)

# 利用par()在同一个device输出多个散点图
#par命令博大精深，用于设置绘图参数.help(par)

op <- par(no.readonly = FALSE) 

par(mfrow=c(3,1))

plot(x1,x2);plot(x2,x3);plot(x3,x1)

par(op)

######################
#关于绘图参数
help(par)

#颜色
colors()

#绘图设备
# dev.cur() 当前图形窗口
# dev.list() 有哪些图形窗口
# dev.next(which=dev.cur())
# dev.prev(which=dev.cur())
# dev.off(which=dev.cur())
# dev.set(which=dev.next())
# dev.new(...) 新建图形窗口
# graphics.off() 
x1 <- c(1,2,3)
x2 <- c(4,3,2)
plot(x1,x2)
x3=c(3,4,4,5)
x4=c(5,4,9,7)
plot(x3,x4)

#多个图形窗共存？
dev.new()
plot(x1,x2)

dev.list()
dev.cur() 
dev.next()
dev.cur() 


#三维散点图

install.packages("scatterplot3d")
library(scatterplot3d)

scatterplot3d(x[2:4])

#

x<-y<-seq(-2*pi,2*pi,pi/15)

f<-function(x,y) sin(x)*sin(y)

z <- outer(x,y,f)

contour(x,y,z,col="blue")

persp(x,y,z,
      theta=30,
      phi=30,
      expand=0.7,
      col="lightblue")

#调和曲线图
#调和曲线图用于聚类判断非常方便。

#地图
install.packages("maps")
library(maps)

map("state",interior=FALSE)

map("state",
    boundary=FALSE,
    col="red",
    add=TRUE)

map('world',fill=TRUE,col=heat.colors(10))


#社交数据可视化
install.packages("geosphere")
library(maps)
library(geosphere)

#画美国地图
map("state")

#画世界地图
map("world")

#通过设置坐标范围使
#焦点集中在美国周边，并且设置一些有关颜色
xlim<-c(-171.738281,-56.601563)
ylim<-c(12.039321,71.856229)

map("world",
    col="#f2f2f2",
    fill=TRUE,
    bg="white",
    lwd=0.05,xlim=xlim,
    ylim=ylim
    )


#画一条弧线表示社交关系
lat_ca<-39.164141
lon_ca<- -121.640625
lat_me <- 45.213004
lon_me <- -68.906250
inter <- gcIntermediate(
  c(lon_ca,lat_ca),
  c(lon_me,lat_me),
  n=50,
  addStartEnd=TRUE)

lines(inter)

#继续画弧线
lat_tx <- 29.954935
lon_tx <- -98.01172
inter2 <- gcIntermediate(
  c(lon_ca,lat_ca),
  c(lon_tx,lat_tx),
  n=50,
  addStartEnd=TRUE
)
lines(inter2,col="red")


#装载数据
airports <- read.csv("http://datasets.flowingdata.com/tuts/maparcs/airports.csv",
                     header=TRUE)

flights <- read.csv("http://datasets.flowingdata.com/tuts/maparcs/flights.csv",
                   header=TRUE,as.is=TRUE)

#画出多重联系

map("world",col="#f2f2f2",
    fill=TRUE,bg="white",lwd=0.05,
    xlim=xlim,ylim=ylim)

fsub<-flights[flights$airline=="AA",]

for(j in 1:length(fsub$airline)){
  air1 <- airports[airports$iata == fsub[j,]$airport1,]
  air2 <- airports[airports$iata == fsub[j,]$airport2,]
  
  inter3 <- gcIntermediate(
      c(air1[1,]$long,air1[1,]$lat),
      c(air2[1,]$long,air2[1,]$lat),
      n=100,
      addStartEnd=TRUE
    )
  lines(inter3,col="black",lwd=0.8)
}









