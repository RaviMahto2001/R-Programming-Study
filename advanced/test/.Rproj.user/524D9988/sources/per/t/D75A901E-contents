#installing packages RMySQL and Dependency DBI
install.packages("RMySQL")
library(RMySQL)

con <- dbConnect(MySQL(),user="root",password="Dear@ravi2001",host="localhost",dbname="emp_dept")
summary(con)

dbListTables(con)
dbGetInfo(con)

dbReadTable(con,"employee")
