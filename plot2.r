##save the dataset at ur computer
##and extract it at ur preffered folder
png(file='plot2.png',width = 480,height = 480)
household <- read.csv("C:/R/household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)
household$daytime <- with(household,strptime(paste(Date,Time),format = '%d/%m/%Y %H:%M:%S'))
household$Date <- as.Date(household$Date,format = '%d/%m/%Y')
house <- subset(household,Date=='2007-02-01' | Date=='2007-02-02')
###plot2
plot(house$daytime,house$Global_active_power,xlab='',ylab='Global Active Power (kilowatts)',type='l')
dev.off()