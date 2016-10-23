
library(DMwR)
#先去除空值比较多的记录
x <- algae[-manyNAs(algae), ]


# 根据案例之间的相似性填补缺失值

#clean.algae <- knnImputation(algae[,1:12],k=10) 
clean.algae <- knnImputation(algae,k=10)
clean.algae

head(clean.algae)

# . 
lm.a1 <- lm(a1 ~ ., data=clean.algae[,1:12])
summary(lm.a1)



