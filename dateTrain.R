# fread (data.table package) to load csv faster

library(data.table)
train_date <- fread("data/train_date.csv",header=TRUE,stringsAsFactors=FALSE,data.table=FALSE)


# get the observation with the ids from id_list

train.date <- subset(train_date,Id %in% id_list)
rm(train_date)
gc()
summary(train.date)

