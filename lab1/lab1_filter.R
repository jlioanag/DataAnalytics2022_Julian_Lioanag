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

EPILand<-E[!as.numeric(Landlock)]
EPILand
Eland <- EPILand[!is.na(EPILand)]
Eland
hist(as.numeric(Eland))

pna <- is.na(Population07)
pop <- Population07[!pna]

hist(as.numeric(Population07))
hist(as.numeric(pop))
fivenum(as.numeric(Population07))

#Exercise 2
EPI_regions
noEU <- EPI_regions["Europe"]
noEU