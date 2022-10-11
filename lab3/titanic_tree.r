require(rpart)
data(Titanic)
tit_rpart <- rpart(
    Survived ~ ., data = Titanic)
plot(tit_rpart)
text(tit_rpart)

pairs(Survived ~ ., data = Titanic, subset = Class, main = "Titanic data, Class")
require(party)
tit_ctree <- ctree(Survived ~ ., data = Titanic)
plot(tit_ctree)
