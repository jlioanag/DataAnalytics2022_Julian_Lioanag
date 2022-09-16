EPI_data <- read.csv("~/Documents/RStudio/DataAnalytics2022_Julian_Lioanag/2010EPI_data.csv")
#or
#EPI_data <- read.xlsx(”<path>/2010EPI_data.xlsx")
# Note: replace default data frame name – cannot start with numbers!
#View(EPI_data)
names(EPI_data) <- as.matrix(EPI_data[1,])
EPI_data <- EPI_data[-1,]
View(EPI_data)

attach(EPI_data) 	# sets the ‘default’ object


plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)
x <- seq(30, 95, 1)
qqplot(qt(ppoints(250), df=5), x, xlab="Q-Q plot for t dsn")
qqline(x)

#attach(EPI_data) 	# sets the ‘default’ object
#fix(EPI_data) 	# launches a simple data editor
EPI 			# prints out values EPI_data$EPI
tf <- is.na(EPI) # records True values if the value is NA
E <- EPI[!tf] # filters out NA values, new array
tf; E

#other data
#GRUMP_data <- read.csv("~/Documents/RStudio/DataAnalytics2022_Julian_Lioanag/GPW3_GRUMP_SummaryInformation_2010.csv")
