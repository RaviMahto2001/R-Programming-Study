if(is.na(8)){
  message("Condition satisfied")
}else{
  message("Condition not satisfied")
}
if(runif(1)>0.5){
  message("Greater than 0.5")
}else{
  message("Smaller than 0.5")
}

r <- round(rnorm(2), 1)
r
x <- r[1]/r[2]
x

if(is.nan(x)){
  message("Not a number")
}else if(is.infinite(x)){
  message("Infinite")
}else if(x>0){
  message("Positive")
}else{
  message("Negative or Zero")
}

if(c(T,F,F)){
  message("First")
}else{
  message("Second")
}
1:10>5
ifelse((1:10)>5,"More","Less")

a <- 5
ifelse((1:10)>5,a+15,"Less")

switch(3, "One", "Two", "Three", "Four")

switch ("Two",
        One = message("First"), 
        Two = message("Second"),
        Three = message("Third"))
