airquality
str(airquality)

nrow(airquality)

clean_airquality <- na.omit(airquality)
nrow(clean_airquality)

subset(airquality,70 <= Temp & Temp <= 80)

nrow(subset(airquality, Month == 5))

head(airquality,10)
airquality[1:10,]

summary(airquality$Wind)

airquality[order(airquality$Temp, decreasing = TRUE),]

aq <- airquality
aq[154,] <- list(15,200,12.5,75,8,27)
aq

vec1 <- 1:154
aq[,7] <- vec1
aq
aq <- aq[,c(1:6)]
aq
