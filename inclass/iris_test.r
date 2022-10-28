library(rpart)
library(rpart.plot)

iris
dim(iris)

s_iris <- sample(150, 100)
s_iris
length(s_iris)

iris_train <- iris[s_iris, ]
iris_test <- iris[-s_iris, ]
dim(iris_train)
dim(iris_test)

decision_tm <- rpart(Species ~ ., iris_train, method = "class")
decision_tm

rpart.plot(decision_tm)
