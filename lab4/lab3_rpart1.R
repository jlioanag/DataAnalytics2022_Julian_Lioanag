require(rpart)
swiss_rpart <- rpart(
    Fertility ~ Agriculture + Education + Catholic, data = swiss)
plot(swiss_rpart) # try some different plot options
text(swiss_rpart) # try some different text options

plot(swiss_rpart, branch.col = "red", branch.lwd = 10)
text(swiss_rpart)
