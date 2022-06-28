#sequences using :
1:10
10:1
10:20
50:20
-10:-1
-1:-10

-c(1:10)

3 * c(1:10) + 2  #can be used in getting values according some equation

#sequences using seq function
seq.int(0.23,2.00,0.1)
seq.int(1,45,5)
seq.int(10,34,0.2)

seq.int(100,50)
seq.int(100,50,-3)

seq.int(0,-10)
seq.int(0,-10,-2)

seq_len(20)

seq(10,100,2.5)

#repeat

rep(0,8)
rep(4,times=5)

rep(1:3,times=5)
rep(1:3,times=5,each=2)

rep(1:3,5)
rep(1:3,5,each=2)

rep(1:3,length=20)
rep(1:3,length=20,each=2)

#seq_along
for(x in 1:10){
  print(x)
}

vec <- c(22,70,11,10)

for (x in seq_along(vec)) {
  print(x)
}
for (x in vec) {
  print(x)
}
for (x in seq_along(vec)) {
  print(vec[x])
}


