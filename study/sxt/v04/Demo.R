
#R的数据集

#R的存储数据的对象类型：向量、矩阵、数组、数据框和列表

#向量里面的元素必须是同一类型
a <- c(1,2,3,46,85,2,1)
b <- c("one","two","three","Four")

c <- c(TRUE,FALSE,TRUE,FALSE,FALSE,TRUE)

#1,2,3变成了字符型
d <- c(1,2,3,"theo") 

#访问元素
a[3]
a[c(1,3,5)]
a[1:3]

#矩阵
?matrix

#未指定存储方式时，默认按列存储。
Y <- matrix(5:24,nrow = 4,ncol = 5)

#指定按行存储，并且指定了列名。
newMatrix <- matrix(x,nrow=2,ncol=2,byrow=TRUE,dimnames=list(rnames,cnames))

#按列存储
newMatrix <- matrix(x,nrow=2,ncol=2,dimnames=list(rnames,cnames))


x <- matrix(1:20,nrow=4)
x[3,]
x[2,3]
x[,4]

#数组
?array

dim1 <- c("A1","A2","A3")
dim2 <- c("B1","B2")
dim3 <- c("C1","C2","C3","C4")
d <- array(1:24,c(3,2,4),dimnames = list(dim1,dim2,dim3))

d[1,2,3]
d[1,,]












