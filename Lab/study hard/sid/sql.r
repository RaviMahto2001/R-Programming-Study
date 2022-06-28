install.packages("sqldf")
cleaned_deer
query <- "Select SkullID, VolCT, VolCT2 from cleaned_deer where VolCT>400"
library("sqldf")

sqldf(query)

x <-  c(8, 6, 9, 2, 10, 8)
sort(x)

str <- c("Hello", "I", "am", "Siddhant")
sort(str)

rank(x)
rank(x, ties.method = "first")
