# fread (data.table package) to load csv faster

library(dtplyr)
train_cat <- fread("data/train_categorical.csv",header=TRUE,colClasses = "character")


# get the observation with the ids from id_list

train.cat <- subset(train_cat,Id %in% id_list)
rm(train_cat)
gc()
summary(train.cat)

train_cat_sample <- train_cat[sample(nrow(train_cat),100000),]
rm(train_cat)
library(xda)
charSummary(train_cat_sample)
