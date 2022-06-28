# Practical 1
# a)
nvec <- c(1, 2, 3, 4, 5)
nvec
cvec <- c("a", "b", "c", "d", "e")
cvec
ivec <- c(1L, 2L, 3L, 4L, 5L)
ivec
class(nvec)
class(cvec)
class(ivec)
# b)
x <- 1:5
y <- 1:10
2*x + y -3
# c)
nOdd <- seq.int(101, 500, 2)
nOdd
# d)
mean(nOdd)
sd(nOdd)
# e)
lst <- list(c(1:5), array(1:10, c(5,2)), list("a", "b", "c"))
lst
# f)
m1 <- matrix(1:12, 3, 4)
m2 <- matrix(1:12, 4, 3)
matmul <- m1 %*% m2
matmul
# g)
rowMeans(matmul)
colMeans(matmul)
# h)
dim(m1) <- c(4,3)
rbind(m1, m2)
cbind(m1, m2)
# i)
mat1 <- matrix(10:21, c(3,4))
mat1
mat1 <- mat1[-1,]
mat1
# Practical 2
# a)
str(airquality)
# b)
nrow(airquality) # No. of observations
ncol(airquality) # No. of variables
# c)
clean_airquality <- na.omit(airquality)
nrow(clean_airquality)
# d)
subset(airquality, Temp>70 & Temp<80)
# e)
nrow(subset(airquality, Month == 5))
# f)
head(airquality, 10)
# g)
summary(airquality$Wind)
# h)
airquality[order(airquality$Temp, decreasing = TRUE),]
# i)
aq <- airquality
aq[154,] <- list(25, 225, 15, 75, 89)
str(aq)

# Practical 3
library(readxl)
getwd()
setwd("C:/Users/Ravi/OneDrive/Documents/R")
# a)
td <- data.frame(read.csv("toy_dataset.csv"))
str(td)
# b)
attach(td)
# c)
nrow(subset(td, City == "New York City"))
# d)
tail(td[order(td$Income),])
# e)
nrow(subset(td, Income > mean(Income)))
# f)
max(subset(td, Gender == "Female")$Income)
# g)
td[sample(1:150000, 10),]
# h)
detach(td)

# Practical 4
remove.packages("rlang")
install.packages("rlang")
library(rlang)
install.packages("DBI")
library(DBI)
install.packages("RSQLite")
library(RSQLite)
install.packages("dplyr")
library(dplyr)
# a)
q4db <- dbConnect(SQLite(),"Q4.sqlite")
dbListTables(q4db)
dbGetQuery(q4db, "create table student(roll int primary key,
           name varchar2(20), course varchar2(20))")
dbListTables(q4db)
# b)
dbGetQuery(q4db, "insert into student values(1, 'Siddhant', 'BSc') ")
dbGetQuery(q4db, "insert into student values(2, 'Smaran', 'BSc') ")
dbGetQuery(q4db, "insert into student values(3, 'Uday', 'BSc') ")
dbGetQuery(q4db, "insert into student values(4, 'Mahima', 'BSc') ")
dbGetQuery(q4db, "insert into student values(5, 'Alquab', 'BSc') ")
# c)
dbGetQuery(q4db, "select * from student")
# d)
dbGetQuery(q4db, "delete from student")
# e)
dbGetQuery(q4db, "drop table student")
dbDisconnect(q4db)

# Practical 6
# a)
iris
summary(iris$Sepal.Length)
summary(iris$Sepal.Width)
summary(iris$Petal.Length)
summary(iris$Petal.Width)
summary(iris$Species)
# b)
with(subset(iris, Species == "setosa"), plot(Sepal.Length, Sepal.Width))
# c)
with(subset(iris, Species == "setosa"), plot(Sepal.Length, Sepal.Width, 
                                           xlab = "Sepal Length", ylab = "Sepal Width", main = "Setosa"))
# d)
lattice::histogram(iris$Petal.Length)
# e)
with(subset(iris, Species == "versicolor"), boxplot(Petal.Width))

# Practical 7
getwd()
setwd("C:/Users/Ravi/OneDrive/Documents/R")
Alcohol <- read.delim("Alcohol.txt")
Alcohol
library("sqldf")

query1<-"select * from (select Year,Country ,max(Beer) from Alcohol group by Year) as a
inner join (select Year,Country,min(Wine) from Alcohol group by Year) as b on a.Year=b.Year"
sqldf(query1)

query2<-"select Country,(sum(Beer)+sum(Wine)+sum(Spirit))/3 as Average from Alcohol group by Country"
sqldf(query2)

query3<-"select * from Alcohol where Country='NewZealand' and year=(select Year from Alcohol where Country='NewZealand' and Spirit>(select avg(Spirit) from Alcohol where Country='NewZealand'))" 
sqldf(query3)

query4<-"select Year,avg(Beer),avg(Spirit),avg(Wine) from Alcohol group by Year"
sqldf(query4)

sub_Aus<-subset(Alcohol,Alcohol$Country=="Australia")
sub_New<-subset(Alcohol,Alcohol$Country=="NewZealand")
x1<-c("Beer"=mean(sub_Aus$Beer),"Wine"=mean(sub_Aus$Wine),"Spirit"=mean(sub_Aus$Spirit))
x2<-c("Beer"=mean(sub_New$Beer),"Wine"=mean(sub_New$Wine),"Spirit"=mean(sub_New$Spirit))
barplot(x1, main = "Australia Alcohol Consumption")
barplot(x2, main = "New Zealand Alcohol Consumption")


#  Create a package in R to perform certain basic statistics functions.

library(usethis) 
library(devtools)   
library(roxygen2) 
getwd()


nMean <- function(x){
  len <- length(x)
  sm <- sum(x)
  sm/len
}
nMean(1:5)
nMed <- function(x){
  x <- sort(x)
  if((length(x) %% 2) == 0){
    return((x[length(x)/2] + x[length(x)/2 + 1]) / 2)
  }
  else{
    return(x[(length(x)/2) + 0.5])
  }
}
nMed(1:9)
nVar <- function(x){
  var(x)
}
nSD <- function(x){
  sd(x)
}
nHist <- function(x){
  hist(x)
}
package.skeleton("pkg8", c("nMean", "nMed", "nVar", "nSD", "nHist")) # used for creating skeleton for a new source package

roxygenize("pkg8") 
rm(list = c("nHist", "nMean", "nMed", "nSD", "nVar"))
check("pkg8") 
build("pkg8")
release("pkg8")