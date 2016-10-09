#用于指定文本大小的参数

#用于指定字体、字号、字样的参数选项

par(font.lab=3,cex.lab=5,font.main=4,cex.main=2)

names(pdfFonts())

#用于控制图形尺寸和边界大小的参数

par(pin=c(4,3),mai=c(1, .5, 1, .2))


#axis()坐标轴函数参数选项


#修改默认图形参数
opar <- par(no.readonly = TRUE)
par(pin=c(2,3))
par(lwd=2,cex=1.5)
par(cex.axis=0.75,font.axis=3)
plot(dose,drugA,type = "b",pch=19,lty=2,col="red")

