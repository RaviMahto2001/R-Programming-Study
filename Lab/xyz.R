with(obama_vs_mccain,plot(Income,Turnout))

cleaned_ob_vs_mc <- na.omit(obama_vs_mccain)

plot(1:25,pch=4)
plot(1:25,pch=1:25)
plot(10000:100000000,pch=1:25,col="Red",main="Colors",xlab="x",ylab=""scales = list(log = TRUE))

library(lattice)



xyplot(Turnout-Income,obama_vs_mccain)


install.packages("ggplot2")
install.packages("learningr")
install.packages("crab_tag")


library(ggplot2)



install.packages("learningr")
install.packages("reshape2")
install.packages("stringr")
install.packages("writexl")
install.packages("ggplot2")
install.packages("lattice")
install.packages("readxl")
install.packages("survival")
