EPI_data <- read.csv("~/Documents/RStudio/DataAnalytics2022_Julian_Lioanag/2010EPI_data.csv")
#or
#EPI_data <- read.xlsx(”<path>/2010EPI_data.xlsx")
# Note: replace default data frame name – cannot start with numbers!
#View(EPI_data)
names(EPI_data) <- as.matrix(EPI_data[1,])
EPI_data <- EPI_data[-1,]
View(EPI_data)

attach(EPI_data) 	# sets the ‘default’ object

#Landlock

EPILand<-EPI[Landlock]
Eland <- EPILand[!is.na(EPILand)]

#hist(Population07)
hist(Eland, seq(30., 95., 1.0), prob=TRUE)
