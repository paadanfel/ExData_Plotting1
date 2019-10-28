# Plot 2

get_data() #get data

png(filename = "plot2.png",height = 480, width = 480)

with(data, plot(DateTime, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = ""))

dev.off()

