# working on lists
#list is a collection of different things

l1 <- list(1:10)
l1

l2 <- list(1:10,(1:10)^2)
l2

l3 <- list(1:10,seq(1,5,0.5),month.abb)
l3

names(l3)

names(l3) <- c("integer","numeric","months")

l3[c("months")]

l3[2]
length(l3)
length(l3[2])
length(l3[[2]])
length(l3[[3]])

# list consider that it has elements like
# list of length 1

ll <- list(l1,l2,l3)
ll
ll[[2]][2]
length(ll[[2]][2])
ll[[2]][[2]]
length(ll[[2]][[2]])


#atomic that can't be broken down 
#recursive that can be broken down
is.atomic(ll)
is.recursive(ll)

vc <- 1:10
is.atomic(vc)
is.recursive(vc)

ar <- array(1:10,c(2,5))
is.atomic(ar)
is.recursive(ar)

mt <- matrix(1:10,nrow=2,ncol=5)
is.atomic(mt)
is.recursive(mt)
