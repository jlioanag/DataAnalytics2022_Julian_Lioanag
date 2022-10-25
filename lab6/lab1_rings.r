require(rpart)
aba <- read.csv("abalone.csv")
attach(aba)
aba_rpart <- rpart(Rings ~ ., data = aba)
plot(aba_rpart) # try some different plot options
text(aba_rpart) # try some different text options

# Regression Tree Example
require(rpart)
# build the  tree
fitM <- rpart(Rings ~ ., method = "anova", data = aba)
printcp(fitM) # display the results
plotcp(fitM)
summary(fitM)
par(mfrow=c(1,2)) 
rsq.rpart(fitM) # visualize cross-validation results
# plot tree
plot(fitM, uniform=TRUE, main="Regression Tree for Rings ")
text(fitM, use.n=TRUE, all=TRUE, cex=.8)
# prune the tree
pfitM<- prune(fitM, cp=0.01160389) # from cptable??? adjust this to see the effect
# plot the pruned tree
plot(pfitM, uniform=TRUE, main="Pruned Regression Tree for Rings")
text(pfitM, use.n=TRUE, all=TRUE, cex=.8)
post(pfitM, file = "ptree2.ps", title = "Pruned Regression Tree for Rings")


library(e1071)
library(rpart)
index <- 1:nrow(aba)
testindex <- sample(index, trunc(length(index) / 3))
testset <- aba[testindex, ]
trainset <- aba[-testindex, ]
rpart.model <- rpart(Rings ~ ., data = aba)
dim(testset)
rpart.pred <- predict(rpart.model, testset[, -8], type = "class")
printcp(rpart.model)
plotcp(rpart.model)

rsq.rpart(rpart.model)
print(rpart.model)

plot(rpart.model,compress=TRUE)
text(rpart.model, use.n=TRUE)
plot(rpart.pred)

fitK <- rpart(Rings ~ ., method="class", data=aba)
printcp(fitK) # display the results
plotcp(fitK) # visualize cross-validation results
summary(fitK) # detailed summary of splits
# plot tree
plot(fitK, uniform=TRUE, main="Classification Tree for Rings")
text(fitK, use.n=TRUE, all=TRUE, cex=.8)
# create attractive postscript plot of tree
post(fitK, file = "ringstree.ps", title = "Classification Tree for Rings") # might need to convert to PDF (distill)

pfitK <- prune(fitK, cp=fitK$cptable[which.min(fitK$cptable[,"xerror"]),"CP"])
plot(pfitK, uniform=TRUE, main="Pruned Classification Tree for Rings")
text(pfitK, use.n=TRUE, all=TRUE, cex=.8)
post(pfitK, file = "ptree.ps", title = "Pruned Classification Tree for Rings")
