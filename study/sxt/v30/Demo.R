
#向后消元法
anova(lm.a1)

#减去不应该加入线性模型回归中的参数
lm2.a1 <- update(lm.a1, . ~. -season)

#Adjusted R-squared 的精度有所提高
summary(lm2.a1)

#两个模型的对比
anova(lm.a1,lm2.a1)

# 不断地向后消元， 得到最终的一个模型
final.lm <- step(lm.a1)

summary(final.lm)



