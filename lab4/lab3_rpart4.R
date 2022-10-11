fit_k <- rpart(Kyphosis ~ Age + Number + Start, method="class", data=kyphosis)
printcp(fit_k) # display the results
plotcp(fit_k) # visualize cross-validation results
summary(fit_k) # detailed summary of splits
# plot tree
plot(fit_k, uniform=TRUE, main="Classification Tree for Kyphosis")
text(fit_k, use.n=TRUE, all=TRUE, cex=.8)
# create attractive postscript plot of tree
post(fit_k, file = "kyphosistree.ps", title = "Classification Tree for Kyphosis") # might need to convert to PDF (distill)

pfit_k<- prune(fit_k, cp=   fit_k$cptable[which.min(fit_k$cptable[,"xerror"]),"CP"])
plot(pfit_k, uniform=TRUE, main="Pruned Classification Tree for Kyphosis")
text(pfit_k, use.n=TRUE, all=TRUE, cex=.8)
post(pfit_k, file = "ptree.ps", title = "Pruned Classification Tree for Kyphosis")

