#列表
mylist <- list(stud.id=1234,stud.name="Tom",stud.marks=c(12,3,24,43,19))
mylist
mylist[[1]]
mylist[[3]]

mylist[1]

mode(mylist[[1]])
mode(mylist[1])


mylist$stud.id

#列表的名称
names(mylist)

#修改列表的名称
names(mylist) <- c("id","name","marks")
mylist

mylist$parents <- c("Mna","Jutice")
mylist

length(mylist)

#删除列表元素
mylist <- mylist[-4]
mylist

other <- list(age=19,sex="male")
other

#合并列表
lst <- c(mylist,other)
lst


#将列表的元素转换成向量,每个元素都有相应的名称
unlist(lst)








