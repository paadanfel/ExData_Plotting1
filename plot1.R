# Plot 1

get_data() #get data

png(filename = "plot1.png",height = 480, width = 480)

hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()
