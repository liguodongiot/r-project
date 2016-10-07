# R访问Mysql数据库
# 1、安装RODBC包（ install.packages("RODBC") ）
# 2、在http://dev.mysql.com/downloads/connector/odbc/
#下载connectors ODBC
# 3、在windows：控制面板->管理工具->数据源(ODBC)
#->双击->添加->选择mysql ODBC driver

#导入RODBC包
library(RODBC)

#连接数据库
myconn <- odbcConnect("rdata",uid="root",pwd="liguodong")

#将表中所有数据导入到R中
#方式1
datamysql <- sqlFetch(myconn,"teacher")
head(datamysql)

#方式2
datamysqlTwo <- sqlQuery(myconn,"select t_id,t_name,classname,days from teacher")
head(datamysqlTwo)

#关闭连接
close(myconn)



