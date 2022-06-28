hypotenuse <- function(x,y){
  sqrt(x*x + y*y)
}

hypotenuse(8,6)
do.call(hypotenuse,list(4,3))

formalArgs(hypotenuse)
formals(hypotenuse)



