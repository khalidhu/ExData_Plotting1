
#Extract data from a file
data <- read.csv("household_power_consumption.txt", header=T, sep=";")

#Filter the data for dates "1/2/2007" and "2/2/2007"                 
subdata<-data[data$Date %in% c("1/2/2007","2/2/2007"),]  

#Convert the data for Global_active_power into numeric
subdata[,3] <- as.numeric(as.character(subdata[,3]))

# Open plot1.png
png("plot1.png", height = 480, width = 480)


hist(subdata$Global_active_power, col ='red', xlab ='Global Active Power (kilowatts)', main = 'Global Active Power')


# Close png file
+dev.off()



