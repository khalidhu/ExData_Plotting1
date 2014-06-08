
#Extract data from a file
data <- read.csv("household_power_consumption.txt", header=T, sep=";")

#Filter the data for dates "1/2/2007" and "2/2/2007"                 
subdata<-data[data$Date %in% c("1/2/2007","2/2/2007"),]  

#Convert the data to date and time
subdata$datetime<-strptime(paste(subdata$Date,subdata$Time),"%d/%m/%Y %H:%M:%S")

# Open plot3.png
png("plot3.png", height = 480, width = 480)

plot(subdata$datetime,subdata$Sub_metering_1,xlab ="", ylab = "Energy sub metering", type ="l",col = 'black')
cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
lines(subdata$datetime,subdata$Sub_metering_2, col = "red")
lines(subdata$datetime,subdata$Sub_metering_3, col = "blue")

legend('topright',legend=cols,col=c('black','red','blue'), lty = 1, lwd = 3)

# Close png file
+dev.off()



