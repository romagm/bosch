# fread (data.table package) to load csv faster

library(data.table)
train_numeric <- fread("data/train_numeric.csv",header=TRUE,stringsAsFactors=TRUE,data.table=FALSE)


# resampling to get at least 50 percent values 1

library(unbalanced)

splittingIO <- function(d,nvar,y){
  nvar <- nvar - 1
  dataNames <- names(d)
  inputNames <- dataNames[1:nvar]
  input <<- d[,inputNames]
  output <<- d[,as.character(y)]
}

splittingIO(train_numeric,970,"Response")

results <- ubUnder(X=input,Y=output,perc=50,method="percPos")
rm(train_numeric,input,output)
gc()
train.numeric <- results$X
train.numeric$Response <- results$Y
rm(results)
gc()
summary(train.numeric)
id_list <- train.numeric$Id
