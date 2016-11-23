
#基本制图函数综述

##########################
##传统表格

#二维结构
#数字与文字为主
#缺乏润色

##现代信息图

#以人眼敏感的视觉元素为主
#信息高度密集


##数据可视化

#新颖
#充实
#高效
#美感

##学习经典：元素周期表


# 元素周期表的天才之处：通过元素的编排组织揭示了元素之间的相互关系以及周期变化的物理属性。
# 蕴含巨大信息量，几乎就是半步化学
# 复杂数据可视化的早期杰作


##学习经典：伦敦地铁图
# 把信息从具体的精确地理位置解放出来，突出了人们和系统里其他位置的逻辑关系。
#突出显示了最相关的信息，删除了很多不相关的信息。

##学习经典：美国竞选结果图


################
#指定问题：所要讲述的故事的主题是什么？故事的主要情节是什么？
#收集数据：原始数据，数据分析，结果的解析、组织、分组。
#应用一种可视化的形式：基本几何要素包括尺寸、彩色、位置、连线组成网络。


#问题+可视化数据+场景=故事


##########################
#散点图

plot(cars$dist~cars$speed)

plot(cars$dist~cars$speed, #y~x
main="Relationship between car distance & speed",#画标题
xlab="Speed(miles per hour)",#X坐标轴标题
ylab="Distance travelled(miles)",#Y坐标轴标题
xlim=c(0,30), #设置X轴范围
ylim=c(0,140), #设置Y轴范围
xaxs="i", #设置X轴风格
yaxs="i", #设置Y轴风格
col="red", #设置“散点”的颜色为红色
pch=19  #设置散点的形状为实心圆点
)


#画线图
setwd("E:/sourceCode/R/data")
getwd()

sales <- read.csv("dailysales.csv",header = TRUE)

plot(sales$units~as.Date(sales$date,"%d/%m/%y"),
type="l",#指定散点图类型为“l”表示画线图
main="Unit Sales in the month of January 2010",
xlab="Date",
ylab="Number of units sold",
col="blue"
)


#lines函数

plot(sales$units~as.Date(sales$date,"%d/%m/%y"),
     main="Unit Sales in the month of January 2010",
     xlab="Date",
     ylab="Number of units sold",
     col="blue"
)
lines(sales$units~as.Date(sales$date,"%d/%m/%y"),col="red")


##########################
# 高水平作图函数与低水平作图函数

# 高水平作图函数：可以独立绘图，例如plot()
# 低水平作图函数：必须先运行高水平作图函数绘图，
#然后再加画在已有的图上面。


sales<- read.csv("citysales.csv",header=TRUE)
barplot(sales$ProductA,
names.arg = sales$City,
col="black")

barplot(sales$ProductA,
names.arg = sales$City,
horiz = TRUE,
col="black")


#彩色柱状图
barplot(as.matrix(sales[,2:4]),
beside = TRUE,
legend=sales$City,
col=heat.colors(5),
border = "white"
)


#直方图
hist(rnorm(1000))

#直方图与柱状图的区别？
#直方图的纵坐标表示观察值个数。
#柱状图的纵坐标表示观察值本身。


#岛屿数据集
islands

#岛屿直方图
hist(islands)

#密度图
plot(density(rnorm(1000)))

#箱型图
metals<-read.csv("metals.csv",header=TRUE)
boxplot(metals,
xlab="Metals",
ylab="Atmospheric Concentration in ng per cubic metre",
main="Atmospheric Metal Concentration in Londom")


##########################
mtcars


#热力图
heatmap(as.matrix(mtcars),
Rowv = NA,
Colv = NA,
col = heat.colors(256),
scale = "column",
margins = c(2,8),
main = "Car characteristics by Model"
)


#鸢尾花数据集
iris


#散点图阵
pairs(iris[,1:4])


pairs(iris[,1:4],
main="Relationships between characteristics of iris flowers",
pch=19,
col="blue",
cex=0.9
)


#在一张画板上画多个散点图

#将一个画板分成6个等份
par(mfow=c(2,3))

plot(rnorm(100),col="blue",main="Plot No.1")
plot(rnorm(100),col="blue",main="Plot No.2")
plot(rnorm(100),col="green",main="Plot No.3")
plot(rnorm(100),col="black",main="Plot No.4")
plot(rnorm(100),col="green",main="Plot No.5")
plot(rnorm(100),col="orange",main="Plot No.6")


#市场数据
market <- read.csv("dailymarket.csv",header=TRUE)

par(mfrow=c(3,1))
plot(market$revenue~as.Date(market$date,"%d/%m/%y"),
type="l",#Specify type of plot as l for line
main="Revenue",
xlab="Date",
ylab="US Dollars",
col="blue"
)
plot(market$profits~as.Date(market$date,"%d/%m/%y"),
     type="l",#Specify type of plot as l for line
     main="Profits",
     xlab="Date",
     ylab="US Dollars",
     col="red"
)
plot(market$customers~as.Date(market$date,"%d/%m/%y"),
     type="l",#Specify type of plot as l for line
     main="Customers visits",
     xlab="Date",
     ylab="Num of people",
     col="black"
)



par(mfrow=c(1,1))


#增加图例说明
rain <- read.csv("cityrain.csv",header = TRUE)

plot(rain$Tokyo,type="l",col="red",
ylim = c(0,300),
main="Monthly Rainfall in major cities",
xlab="Month of Year",
ylab="Rainfall(mm)",
lwd=2)

lines(rain$NewYork,type="l",col="blue",lwd=2)
lines(rain$London,type="l",col="green",lwd=2)
lines(rain$Berlin,type="l",col="orange",lwd=2)


legend("topright",
legend = c("Tokyo","NewYork","London","Berlin"),
col=c("red","blue","green","orange"),
lty=1,
lwd=2)


#图例的另外一种样式

legend("top",
legend=c("Tokyo","NewYork","London","Berlin"),
ncol=4,
cex=0.8,
bty="n",
col=c("red","blue","green","orange"),
lty=1,lwd=2)

#地图
install.packages("maps")
library(maps)
map()

map("world",fill=TRUE,col=heat.colors(10))
map("world",fill=TRUE,col=heat.colors(15))

#美国地图
# interior = FALSE 不画里面的线
map("state",interior = FALSE)

#boundary = FALSE 不画边界
#add = TRUE 追加到前一张图
map("state",boundary = FALSE,col = "red",add = TRUE)


#GADM地理数据库
install.packages("sp")
library(sp)

install.packages("mapdata")
install.packages("maptools")
library(mapdata)
library(maptools)

setwd("D:")
getwd()
#map<-readShapePoly("CHN_adm1.rds")
map<-readRDS("CHN_adm1.rds")
plot(map)

plot(map,col=heat.colors(10))

#load(url("http://gadm.org/data/rda/GBR_adm1.RData"))
#read.table("CHN_adm1.rds")
#spplot(gadm,"Shape Area")

#输出为图形文件
#保存在工作目录
png("scatterplot.png")
plot(rnorm(1000))
dev.off()

#输出选项
png("scatterplot.png",height = 600,width = 600)
png("scatterplot.png",height = 4,width = 4,units = "in")
png("scatterplot.png",res=600)
png("scatterplot.pdf")





##########################

#设置图形要素的颜色

#设置点的颜色
plot(rnorm(1000),col="red")


#颜色的表达
#列数所有颜色名
colors()

#使用数值表达颜色
#col=n
#n表示当前调色板上的颜色值
#缺省调色板下，1表示黑色，2表示红色，0表示背景色
#palette()函数观看当前调色板
palette()


#改变缺省调色板
palette(c("red","blue","yellow","green","orange"))
palette()

palette("default")
palette()

#十六进制表达的颜色
#红色，绿色，蓝色，alpha(透明度)
plot(rnorm(1000),col="#AC5500BB")

rgb(0.5,0.5,0.5,0.5)

rgb(0.5,0.5,0.5,0.2)

#自动取颜色
heat.colors(5)
heat.colors(10)
heat.colors(25)

#直观的调色板RColorBrewer

install.packages("RColorBrewer")
library(RColorBrewer)

display.brewer.all()

brewer.pal(7,"YlOrRd")

display.brewer.pal(7,"YlOrRd")


#颜色向量：使用多种颜色画图
setwd("./data")
getwd()
sales <- read.csv("citysales.csv",header = TRUE)

barplot(as.matrix(sales[,2:4]),
beside = T,
legend=sales$City,
col=c("red","blue","green","orange","pink"),
border="white")

#颜色数和样本数要相等
sales

#循环颜色（beside = T）
barplot(as.matrix(sales[,2:4]),
beside = T,
legend=sales$City,
col=c("red","blue","green","pink"),
border="white")

#利用head.colors()
barplot(as.matrix(sales[,2:4]),
beside = T,
legend=sales$City,
col=heat.colors(length(sales$City)),
border="white")

#利用rainbow()  彩虹的颜色
barplot(as.matrix(sales[,2:4]),
beside = T,
legend=sales$City,
col=rainbow(length(sales$City)),
border="white")

#利用terrain.colors()
barplot(as.matrix(sales[,2:4]),
beside = T,
legend=sales$City,
col=terrain.colors(length(sales$City)),
border="white")

#其他颜色函数
#cm.colors()
#topo.colors()
barplot(as.matrix(sales[,2:4]),
        beside = T,
        legend=sales$City,
        col=topo.colors(length(sales$City)),
        border="white")


###############################



