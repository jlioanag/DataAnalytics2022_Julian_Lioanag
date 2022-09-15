#Cumulative Density Function
plot(ecdf(EPI), do.points=FALSE, verticals=TRUE) 
#Quantile-Quantile?
par(pty="s") 
qqnorm(EPI); qqline(EPI)
#Simulated data from t-distribution:
x <- rt(250, df = 5)
qqnorm(x); qqline(x)
#Make a Q-Q plot against the generating distribution by: x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

help(distributions)
# try different ones.....

#Exercise 1
E <- as.numeric(EPI)
summary(E)
fivenum(E, na.rm=TRUE)
stem(E)
hist(E)
hist(E, seq(30., 95., 1.0), prob=TRUE)
lines(density(E, na.rm=TRUE, bw=1.))

help(qqplot)
help(ecdf)

z <- seq(30, 95, 1)
z

plot(ecdf(as.numeric(DALY)), do.points=FALSE, verticals=TRUE)
par(pty='s')
qqnorm(E); qqline(E)
qqplot(as.numeric(DALY), as.numeric(EPI), plot.it=TRUE, xlab="DALY", ylab="EPI")
qqline(x)
qqplot(as.numeric(PopulationDensity07), as.numeric(Population07), plot.it=TRUE, xlab="Density", ylab="Population count")
qqplot(as.numeric(AIR_H), as.numeric(WATER_H), plot.it=TRUE, xlab="AIR_H", ylab="WATER_H")
qqline(x)
boxplot(as.numeric(EPI), as.numeric(DALY))
