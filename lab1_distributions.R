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
help(qqplot)
help(ecdf)

plot(ecdf(DALY), do.points=FALSE, verticals=TRUE)
qqplot(DALY, WATER_H, plot.it=TRUE, xlab="DALY", ylab="WATER_H")
qqline(x)
qqplot(PopulationDensity07, Population07, plot.it=TRUE, xlab="Density", ylab="Population count")
qqplot(AIR_H, WATER_H, plot.it=TRUE, xlab="AIR_H", ylab="WATER_H")
qqline(x)
boxplot(EPI, DALY)
