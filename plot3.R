# Plot 3

get_data() #get data

png(filename = "plot3.png",height = 480, width = 480)

with(data, plot(DateTime, Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = ""))
with(data, lines(DateTime,Sub_metering_2, col = "red"))
with(data, lines(DateTime,Sub_metering_3, col = "blue"))
legend("topright", lty = "solid", col = c("black", "red", "blue"), legend = names(data)[7:9])


dev.off()