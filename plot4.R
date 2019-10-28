# Plot 4

get_data() #get data

png(filename = "plot4.png",height = 480, width = 480)

par(mfrow = c(2,2))

# (1,1)
with(data, plot(DateTime, Global_active_power, type = "l", ylab = "Global Active Power", xlab = ""))

#(1,2)
with(data, plot(DateTime, Voltage, type = "l", ylab = "Voltage", xlab = "datetime"))

#(2,1)
with(data, plot(DateTime, Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = ""))
with(data, lines(DateTime,Sub_metering_2, col = "red"))
with(data, lines(DateTime,Sub_metering_3, col = "blue"))
legend("topright", lty = "solid", bty = "none",col = c("black", "red", "blue"), legend = names(data)[7:9])

#(2,2)
with(data, plot(DateTime, Global_reactive_power, type = "l", xlab = "datetime"))


dev.off()
