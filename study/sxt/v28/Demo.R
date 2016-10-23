
library(DMwR)

# 提取含有缺失值的记录
algae[!complete.cases(algae),]

#能够返回缺失值比较多的记录
#默认0.2
manyNAs(algae)

# 0.2表示缺失值操作了属性的%20就返回。
manyNAs(algae,0.2)

#去除缺失值
x <- algae
y <- na.omit(x)
y

#发现找不到缺失值了
y[!complete.cases(y),]

#去除比较多缺失值的记录
x <- algae[-c(62,199),]
manyNAs(x)

#相关关系
cor(algae[,4:18], use="complete.obs")

#可视化结果
symnum(cor(algae[,4:18], use="complete.obs"))


#####################
# 根据变量之间的相关关系填补缺失值

#去除太多空值的记录
x <- algae[-manyNAs(algae),]

lm(PO4~oPO4,data=algae)


#####################
# 根据案例之间的相似性填补缺失值


