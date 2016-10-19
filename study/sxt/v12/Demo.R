
dose <- c(20,30,40,45,60)
drugA <- c(16,20,27,40,60)
drugB <- c(15,18,25,31,40)

plot(dose,drugA,type="b")


#
par(no.readonly = TRUE)

opar <- par(no.readonly = TRUE)

#lty=2虚线,pch=17实心的三角符号
par(lty=2,pch=17)
plot(dose,drugA,type="b")

#恢复之前的设置
par(opar)
plot(dose,drugA,type="b")


plot(dose,drugA,type="b",lty=2,pch=19)

#pch指定绘制点时使用的符号
#cex指定符号的大小
#lty指定线条类型
#lwd指定线条宽度，默认为1。
plot(dose,drugA,type="b",lty=6,lwd=3,pch=11,cex=3)

#col 默认的绘图颜色
#col.axis 坐标轴刻度文字的颜色
#col.lab 坐标轴标签（名称）的颜色
#col.main 标题颜色
#col.sub 副标题颜色
#fg 图形的前景色
#bg 图形的背景色

plot(dose,drugA,type="b",lty=6,lwd=3,pch=11,cex=3,col=1)
plot(dose,drugA,type="b",lty=6,lwd=3,pch=11,cex=3,col=2)
plot(dose,drugA,type="b",lty=6,lwd=3,pch=11,cex=3,col="blue")

plot(dose,drugA,type="b",lty=6,lwd=3,pch=11,cex=3,
     col="blue",col.axis="red",col.lab="green")
















