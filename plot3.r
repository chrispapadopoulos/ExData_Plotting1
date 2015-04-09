##save the dataset at ur computer
##and extract it at ur preffered folder
png(file='plot3.png',width = 480,height = 480)
household <- read.csv("C:/R/household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)
household$daytime <- with(household,strptime(paste(Date,Time),format = '%d/%m/%Y %H:%M:%S'))
household$Date <- as.Date(household$Date,format = '%d/%m/%Y')
house <- subset(household,Date=='2007-02-01' | Date=='2007-02-02')
###plot3
plot(house$daytime,house$Sub_metering_1,type='n',ylab="Energy Sub metering",xlab='')
lines(house$daytime,house$Sub_metering_1)
lines(house$daytime,house$Sub_metering_2,col = 'red')
lines(house$daytime,house$Sub_metering_3,col = 'blue')
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"))
dev.off()