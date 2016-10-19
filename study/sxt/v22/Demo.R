
## R的基本图形
install.packages("vcd")
library(vcd)

# 简单的条形图
#向量或矩阵
barplot(c(1,2,4,2,6,4,3,5))

#水平
barplot(c(1,2,4,2,6,4,3,5),horiz = TRUE)

head(Arthritis)

#统计数
counts <- table(Arthritis$Improved)
counts

barplot(counts)
barplot(counts,horiz = TRUE)

# 堆砌、分组条形图
head(Arthritis)
counts <- table(Arthritis$Improved,
                Arthritis$Treatment)
counts

#默认堆砌条形图
barplot(counts) 
#分组条形图
barplot(counts,beside = TRUE)

# 均值条形图
state.region
state.x77

#统计各个区域的文盲比例
states <- data.frame(state.region,state.x77)
x <- aggregate(states$Illiteracy,by=list(state.region),
               FUN=mean)
x
barplot(x$x,names.arg = x$Group.1)

# 条形图的微调
par(mar=c(5,8,4,2))
counts <- table(Arthritis$Improved)
barplot(counts,horiz = TRUE,
        cex.names = 0.8,
        names.arg = c("None improved",
                        "Some improved",
                        "mark improved"))
#标签由垂直旋转成水平
par(las = 2)
barplot(counts,horiz = TRUE,
        cex.names = 0.8,
        names.arg = c("None improved",
                      "Some improved",
                      "mark improved"))
