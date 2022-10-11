require(rpart)
swiss_rpart <- rpart(Fertility ~
    Agriculture + Education + Catholic, data = swiss)
plot(swiss_rpart) # try some different plot options
text(swiss_rpart) # try some different text options

require(party)

tree_swiss <- ctree(Species ~ ., data = iris)
plot(tree_swiss)

cforest(Species ~ .,
    data = iris,
    controls = cforest_control(mtry = 2, mincriterion = 0))

tree_fert <- ctree(
    Fertility ~ Agriculture + Education + Catholic, data = swiss)

cforest(
    Fertility ~ Agriculture + Education + Catholic, data = swiss,
    controls = cforest_control(mtry = 2, mincriterion = 0))
# look at help info, vary parameters.

library(tree)
tr <- tree(Species ~ ., data = iris)
tr
tr$frame
plot(tr)
text(tr)
#find "prettier" ways to plot the tree
