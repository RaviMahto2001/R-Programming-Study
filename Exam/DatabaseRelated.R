# approach 1 using RMySQL

library(DBI)
library(RMySQL)

#
# con <- dbConnect(MySQL(),
#                  host="localhost",
#                  user = "root",
#                  password = "root",
#                  dbname = "Practice")
#

con <- dbConnect(MySQL(),
                 host="localhost",
                 user = "root",
                 password = "root",
                 dbname = "dbname")
summary(con)

tables <- dbListTables(con)

dbSendQuery(con,"create table stable
            ( Name varchar(20),
              cgpa int);")
dbSendQuery(con,"insert into stable values('Raviz',10);")
dbSendQuery(con,"insert into stable values('Ravix',8);")
dbSendQuery(con,"insert into stable values('Raviy',9.5);")

# dbSendQuery return result set that need to be cleared after use
# use fetch thing here
res <- dbSendQuery(con,"select * from stable")
fetch(res,n=-1)

dbClearResult(res)

# dataframe return, here fetch will not work
res <- dbGetQuery(con,"select * from stable where cgpa > 9;")
res

dbDisconnect(con)

# approach 2 using RSQLite
detach("package:RMySQL",unload = TRUE)
library(DBI)
library(RSQLite)

con <- dbConnect(SQLite(),"Practice")
summary(con)                 

dbListTables(con)

res <- dbSendQuery(con,"create table stable
            ( Name varchar(20),
              cgpa int);")
dbClearResult(res)
res <- dbSendQuery(con,"insert into stable values('Raviz',10);")
dbClearResult(res)
res <- dbSendQuery(con,"insert into stable values('Ravix',8);")
dbClearResult(res)
res <- dbSendQuery(con,"insert into stable values('Raviy',9.5);")
dbClearResult(res)

# dbSendQuery return result set that need to be cleared after use
# use fetch thing here
res <- dbSendQuery(con,"select * from stable")
fetch(res,n=-1)
dbClearResult(res)

# dataframe return, here fetch will not work
res <- dbGetQuery(con,"select * from stable where cgpa > 9;")
res

res <- dbSendQuery(con,"drop table stable;")
dbClearResult(res)

dbDisconnect(con)                


# Best approach
con <- dbConnect(SQLite(),"Practice")
summary(con)

dbListTables(con)

res <- dbSendQuery(con,"create table stable
            ( Name varchar(20),
              cgpa int);")
dbClearResult(res)

# function to send query safely
sendqueryfun <- function(query){
  res <- dbSendQuery(con,query)
  dbClearResult(res)
}

sendqueryfun("insert into stable values('Raviy',9.5);")
sendqueryfun("insert into stable values('Ravix',8);")
sendqueryfun("insert into stable values('Raviz',10);")

dbGetQuery(con,"select * from stable;")

dbReadTable(con,"stable")

dbDisconnect(con)
