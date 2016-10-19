### 画图

# 次要刻度线
install.packages("Hmisc")
library(Hmisc)

#minor.tick(nx=2,ny=3,tick.ratio=n)

plot(1:4,1:4,type="b")
#tick.ratio次要刻度线相对于主要刻度线的比值
minor.tick(nx=3,ny=2,tick.ratio=0.5)


#参考线
#abline(h=value,v=value)
abline(h=2,col="red",lty=2)
abline(v=2,col="yellow",lty=1)


#图例
#legend(location,title,legend,...)

dose <- c(20,30,40,45,60)
drugA <- c(16,20,27,40,60)
drugB <- c(15,18,25,31,4)

opar <- par(no.readonly = TRUE)
par(lwd-2,cex=1.5,font.lab=2)

#画药物A
plot(dose,drugA,type="b",pch=15,lty=1,col="red",
     ylim=c(0,60),main="药物A和药物B的对比",
     xlab="剂量",ylab="药物反应")
#增加药物B
lines(dose,drugB,type = "b",pch=17,lty=2,col="blue")

#次要刻度线
minor.tick(nx=5,ny=2,tick.ratio = 0.5)

#图例
legend("topleft",inset = 0.05,title = "类型",legend = c("A","B"),
       lty=c(1,2),pch=c(15,17),col=c("red","blue"))

par(opar)

#文本标注
head(mtcars)
attach(mtcars)

plot(wt,mpg,main="车重和耗油的关系",
     xlab="车重",ylab="耗油量",pch=18,col="blue")

#标注
text(wt,mpg,row.names(mtcars),cex=0.5,
     pos=4,col="red")



