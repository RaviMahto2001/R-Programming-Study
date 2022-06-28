# Q3 Download the Toy Dataset CSV file available on Kaggle

# a) Read the CSV into a data frame object.

toy_dataset <- read.csv("F:\\studyfiles\\R Programming\\toy_dataset.csv")
#or
toy_dataset <- read.csv("F:/studyfiles/R Programming/toy_dataset.csv")

# b) Attach the data frame to the environment.

attach(toy_dataset)
# attach function is used to attach the data frame object to the environment.
# what attaching means?
# the variables in the dataset are directly accessible by their name.

# c) Count the number of rows with City = New York City .

nrow(subset(toy_dataset, City == "New York City"))

# d) Display rows that have top 5 income values.

head(toy_dataset[order(toy_dataset$Income,decreasing = TRUE),5],5)
#or
toy_dataset[order(toy_dataset$Income,decreasing = TRUE)[1:5],5]

# e) Find out the number of rows with income greater than average income.

nrow(subset(toy_dataset, Income > mean(toy_dataset$Income)))

# f) Find the highest salary for the female population.

max(subset(toy_dataset, Gender == "Female")$Income)
#or
max(subset(toy_dataset, Gender == "Female",Income))

# g) Randomly select 10 rows from the given dataset.

toy_dataset[sample(nrow(toy_dataset),10),]
# or
toy_dataset[sample(1:nrow(toy_dataset),10),]

# h) Detach the data frame object from the environment.

detach(toy_dataset)
