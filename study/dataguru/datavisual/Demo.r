#统计建模与R软件 习题

#2.2

n <- c(1:16)
A = matrix(n,nrow=4,ncol=4)
B = matrix(n,nrow=4,ncol=4,byrow=T)
A
B

C = A + B
#矩阵相乘
D = A %*% B
C
D

#对应位置元素相乘
E = A * B
E

F = A[1:3,1:3]
F

G = B[,-3]
G

#2.3
Z = rep(1:4,c(5,3,4,2))
Z



####################################

#画茎叶图

x=runif(100,min=0,max=100)
x=round(x)
x

stem(x)

stem(x,scale=1)
stem(x,scale=2)



