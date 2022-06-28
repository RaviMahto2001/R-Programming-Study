sqrt(100)  #built in function

#user defined function
myhypotenuse <- function(x,y){
  sqrt(x*x + y*y)
}

myhypotenuse(12,5)

do.call(myhypotenuse ,list(3,4))

args(myhypotenuse)
formals(myhypotenuse)
formalArgs(myhypotenuse)

