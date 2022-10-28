mtcars
dim(mtcars)
head(mtcars)
str(mtcars)
model1 <- lm(mpg ~ cyl + wt, data = mtcars)
model1
plot(model1, pch = 18, col = "red", which = c(4))
cd <- cooks.distance(model1)
round(cd, 5)
sort(round(cd, 5))

library(ISLR)
head(Hitters)
dim(Hitters)
data <- na.omit(Hitters)
dim(data)
head(data)
salary <- lm(Salary ~ ., data = Hitters)
summary(salary)

cooksD <- cooks.distance(salary)
inf <- cooksD[(cooksD > (3 * mean(cooksD, na.rm = TRUE)))]
inf
noi <- names(inf)
noi

outliers <- data[noi, ]
data_no_outliers <- 