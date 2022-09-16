multivariate <- read.csv("~/Documents/RStudio/DataAnalytics2022_Julian_Lioanag/multivariate.csv")
head(multivariate)
attach(multivariate)
help(lm)

mm <- lm(Homeowners ~ Immigrants)
mm
summary(mm)

plot(Homeowners ~ Immigrants)
help(abline)
abline(mm)
abline(mm, col = 2, lwd = 3)

newImmigrantData <- data.frame(Immigrant = c(0, 20))
predict(mm, newImmigrantData)

abline(mm)
attributes(mm)
mm$coefficients

#ggplot examples
View(multivariate)
#thought process is that larger areas may be correlated with having more capacity to hold more population
plot(multivariate$Population, multivariate$area)
library(ggplot2)

qplot(multivariate$Population, multivariate$area)
qplot(Population, area, data = multivariate)
ggplot(multivariate, aes(x=Population, y=area)) + geom_point()
head(multivariate)
plot(Population/area, Immigrants, type='l')
points(Population/area, Immigrants)

lines(Population/area, Immigrants, col='blue')

ggplot(multivariate, aes(x=Population/area, y=Homeowners)) + geom_line() + geom_point()

#making bar graphs
EPI_data <- read.csv("~/Documents/RStudio/DataAnalytics2022_Julian_Lioanag/2010EPI_data.csv")
names(EPI_data) <- as.matrix(EPI_data[1,])
EPI_data <- EPI_data[-1,]
head(EPI_data)

table(EPI_data$EPI_regions)
barplot(table(EPI_data$EPI_regions))
qplot(EPI_data$EPI_regions)
qplot(factor(EPI_data$EPI_regions))
EPI_R <- EPI_data$EPI_regions
qplot(factor(EPI_R))
ggplot(EPI_data, aes(x = factor(EPI_R))) + geom_bar()

hist(mtcars$mpg, breaks = 5)
qplot(mpg, data = mtcars, binwidth = 4)
ggplot(mtcars, aes(x = mpg)) + geom_histogram(binwidth = 4)
