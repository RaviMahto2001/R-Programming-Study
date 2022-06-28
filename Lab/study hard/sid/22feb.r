data(package = .packages(TRUE))
women
str(women)
summary(women$height)
summary(women$weight)
data <- data.frame(women)
data

library(survival)
kidney
str(kidney)

head(kidney)
tail(kidney)
getwd()
setwd("C:/Users/sidhu/OneDrive/Documents/R")

customers <- read.csv("Mall_Customers.csv")
head(customers)
tail(customers)
str(customers)

names(customers)
colnames(customers)
names(customers) <- list("CustID", "Gender", "Age", "Annual_Income", "Spendings")
names(customers)
customers
head(customers)


cust_txt <- read.table("cust_data.txt", sep = ",", header = TRUE, skip = 50, fill = TRUE)
cust_txt
getwd()

write.table(customers, "cust_data1.txt", row.names = F, sep = "-")
read.table("cust_data1.txt")

text <- readLines("textdata.txt")
text
text[2:7]

rev(text)
rev.default(text)

install.packages("readxl")

library(readxl)
xlsx <- read_xlsx("Mall_Customers1.xlsx")
xlsx

head(xlsx)
install.packages("writexl")

library(writexl)
xlsx2 <- write_xlsx(xlsx, "xlsx_write.xlsx")
xlsx2
read_xlsx(xlsx2)
class(xlsx)

df4 <- data.frame(read.csv("states.csv"))
df4

class(df4)
class(text)
link <- "https://api.covid19india.org/csv/latest/states.csv"
states_df <- read.csv(link)
states_df

covid_delhi <- subset(states_df, State == "Delhi")
covid_delhi
write_xlsx(covid_delhi, "covid_delhi.xlsx")
read_xlsx("covid_delhi.xlsx")

x <- c("y","n","y","n","y","y","s","y")
y <- rep.int(NA, length(x))
x
y
y[x == 'y'] <- TRUE
y[x == 'n'] <- FALSE
y

install.packages("learningr")
library(learningr)

alpe_d_huez
str(alpe_d_huez)
drugs <- alpe_d_huez$DrugUse
drugs

drugUse <- rep.int(NA, length(drugs))
drugUse[drugs == 'Y'] <- TRUE
drugUse[drugs == 'N'] <- FALSE
drugUse

english_monarchs
str(english_monarchs)
head(english_monarchs)

library(writexl)
write_xlsx(english_monarchs, "English_monarchs.xlsx")
df <- data.frame(english_monarchs)
class(df)
str(df)

install.packages("stringr")
library(stringr)

multiple_kingdom <- str_detect(df$domain, fixed(","))
multiple_kingdom
df[multiple_kingdom, c("name", "domain")]

multiple_rulers <- str_detect(df$name, "and | ,")
multiple_rulers

var1 <- is.na(multiple_rulers)
class(var1)
var1
df[!var1,]
df
subset(df, domain == "England")
length(subset(df, domain == "England"))
size(subset(df, domain == "England"))
sum(str_count(df$domain, "England"))

gender <- c("Male", "male", "MALE", "M", "m", "Female", "female", "F", "f", "FEMALE", NA)
gender

grep("^m(ale)?$", gender, TRUE)
grep("^m(ale)?$", gender, TRUE)
grepl("^m(ale)?$", gender, TRUE)

as.integer(grepl("^m(ale)?$", gender, TRUE))
sum(as.integer(grepl("^m(ale)?$", gender, TRUE)))

clean_gender <- str_replace(gender, "(?i)^m(ale)?$", "Male")
clean_gender
gender
clean_gender <- str_replace(clean_gender, "(?i)^f(emale)?$", "Female")
clean_gender

clean_gender <- na.omit(clean_gender)
clean_gender

str(df)

df$length.of.reign <- df$end.of.reign - df$start.of.reign
str(df)
df$length.of.reign.years <- with(df, (end.of.reign - start.of.reign))
str(df)

df <- df[,-7]
str(df)

subset(df, select = -length.of.reign)
str(subset(df, select = -length.of.reign))
na.fail(df)

deer_endocranial_volume
cleaned_deer <- na.omit(deer_endocranial_volume)
cleaned_deer
na.fail(cleaned_deer)

install.packages("reshape2")
library(reshape2)
deer_long <- melt(cleaned_deer, measure.vars = -1)
deer_long
dcast(deer_long, SkullID~variable)
