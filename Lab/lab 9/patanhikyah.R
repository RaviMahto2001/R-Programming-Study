#strings
str1 <- c("Hello I am Ravi")
str1
str2 <- c("But I am Busy")
str2

paste(str1,str2)
paste0(str1,str2)

sq <- function(x){
  x*x
}

sq(5)

squareroot <- function(x){
  sqrt(x)
}

squareroot(25)

avg <- function(vec){
  sum <- 0
  for(el in vec){
    sum = sum + el
  }
  sum/length(vec)
}

avg(1:10)
