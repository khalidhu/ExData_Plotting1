
#Extract data from a file
data <- read.csv("household_power_consumption.txt", header=T, sep=";")

#Filter the data for dates "1/2/2007" and "2/2/2007"                 
subdata<-data[data$Date %in% c("1/2/2007","2/2/2007"),]  

#Convert the data to date and time
subdata$datetime<-strptime(paste(subdata$Date,subdata$Time),"%d/%m/%Y %H:%M:%S")

# Open plot1.png
png("plot2.png", height = 480, width = 480)

plot(subdata$datetime,subdata$Global_active_power,xlab ="", ylab = "Global Active Power (kilowatts)", type ="l")

# Close png file
+dev.off()



