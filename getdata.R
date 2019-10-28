library(lubridate)
# download file
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile = "power.zip")

unzip("power.zip")

data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?", stringsAsFactors = FALSE)

data$Date <- strftime(as.Date(data$Date, format = "%d/%m/%Y"))

data <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")

data$DateTime <- paste(data$Date, data$Time)

data$DateTime <- ymd_hms(data$DateTime)


