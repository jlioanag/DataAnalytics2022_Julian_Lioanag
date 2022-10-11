#compare to kknn?

library(kknn)
library(spam)
spam_kknn <- kknn(spam ~ ., train, test, distance = 1,
             kernel = "triangular")
summary(spam_kknn)
# etc....
# other distances and kernels!!
