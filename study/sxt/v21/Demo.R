## R的高级管理

# 重复和循环
for(i in 1:5) print("Hello")

x <- 5 
while(x>0) {print("Hello");x <- x -1}


# 条件执行

x <- 1
if(x != 1) print("male")
if(x != 1) print("male") else print("female")

ifelse(x>1,print("male"),print("female"))
ifelse(x>1,"male","female")

feeling <- c("sad","afraid")
for(i in feeling){
  print(switch (i, happy="I am glad.",
                afraid="fear",sad="cheer up"))
}
  


# 转置

cars <- mtcars[1:5,1:4]
cars

t(cars)


