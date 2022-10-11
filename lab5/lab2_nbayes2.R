data(Titanic)
mdl <- naiveBayes(Survived ~ ., data = Titanic)
mdl
# etc.
pred <- predict(mdl, as.data.frame(Titanic)[, 1:3])
table(pred)
