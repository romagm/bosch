# fread (data.table package) to load csv faster

library(data.table)
train_numeric <- fread("data/train_numeric.csv",header=TRUE)

# cleaning and exploring data with dtplyr
library(dplyr)
