# 用户自定义函数

# switch
mydate <- function(type){
  switch(type,
         long = format(Sys.time(),"%A %B %d %y"),
         short = format(Sys.time(),"%m-%d-%y"),
         cat(type,"is not recognized type\n")
         )
}
mydate("long")
mydate("short")
mydate("nonon")

# for
sum <- function(num){
  x <- 0
  for(i in 1:num){
    x <- x + i
  } 
  return (x)
}

# 重新编辑函数
fix(sum)

sum(100)

