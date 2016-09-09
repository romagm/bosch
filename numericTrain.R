# fread (data.table package) to load csv faster

library(data.table)
train_numeric <- fread("data/train_numeric.csv",header=TRUE)

# cleaning and exploring data with dtplyr
library(dplyr)

summary(train_numeric)
sum(is.na(train_numeric$L0_S0_F4))
missingValues <- colSums(is.na(train_numeric))

xt <- xtabs(Response ~ L0_S0_F2 + L0_S0_F4,data=train_numeric)
xt

summary(train_numeric$L0_S0_F0)
train_numeric_factor1 <- factor(train_numeric$L0_S0_F0)
plot(train_numeric_factor1)
train_numeric_factor2 <- factor(train_numeric$L2_S26_F3040)
plot(train_numeric_factor2)

subie <- train_numeric[sample(nrow(train_numeric),100),]

