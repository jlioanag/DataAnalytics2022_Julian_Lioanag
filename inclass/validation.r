library(ISLR)
library(MASS)
library(boot)

set.seed(1)

train <- sample(392, 196)
attach(Auto)
lm_fit <- lm(mpg ~ horsepower, data = Auto, subset = train)
mean((mpg - predict(lm_fit, Auto))[-train]^2)

lm_fit2 <- lm(mpg ~ poly(horsepower, 2), data = Auto, subset = train)
mean((mpg - predict(lm_fit2, Auto))[-train]^2)

lm_fit3 <- lm(mpg ~ poly(horsepower, 3), data = Auto, subset = train)
mean((mpg - predict(lm_fit3, Auto))[-train]^2)

set.seed(17)
cv_error_10 <- rep(0, 10)
for (i in 1:10) {
    glm_fit <- glm(mpg ~ poly(horsepower, i), data = Auto)
    cv_error_10[i] <- cv.glm(Auto, glm_fit, K = 10) $delta[1]
}
cv_error_10

train <- sample(392, 196)
lm.fit <- lm(mpg ~ horsepower, data = Auto, subset = train)
attach(Auto)
mean((mpg - predict(lm.fit, Auto))[-train]^2)
