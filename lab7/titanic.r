data(Titanic)
require(rpart)
t_rpart <- rpart(Survived ~ ., data = Titanic)
plot(t_rpart)
text(t_rpart)

require(party)

t_tree <- ctree(Survived ~ ., data = Titanic)
plot(t_tree)

require(randomForest)
t_for <- randomForest(Survived ~ ., data = Titanic)
print(t_for) 	# view results
importance(t_for) # importance of each predictor

d <- dist(Titanic, method = "euclidean")
t_clust <- hclust(d, method = "complete", members = NULL)
plot(t_clust, cex = 0.6, hang = -1)