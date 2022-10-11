# Regression Tree Example
require(rpart)
# build the  tree
fit_m <- rpart(
    Mileage ~ Price + Country + Reliability + Type,
    method = "anova",
    data = cu.summary)
printcp(fit_m) # display the results
plotcp(fit_m)
summary(fit_m)
par(mfrow = c(1, 2))
rsq.rpart(fit_m) # visualize cross-validation results
# plot tree
plot(fit_m, uniform = TRUE, main = "Regression Tree for Mileage ")
text(fit_m, use.n = TRUE, all = TRUE, cex = .8)
# prune the tree
pfit_m <- prune(fit_m,
    cp = 0.01160389) # from cptable??? adjust this to see the effect
# plot the pruned tree
plot(pfit_m, uniform = TRUE, main = "Pruned Regression Tree for Mileage")
text(pfit_m, use.n = TRUE, all = TRUE, cex = .8)
post(pfit_m, file = "ptree2.ps", title = "Pruned Regression Tree for Mileage")
