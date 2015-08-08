plot1 <- function() {
  d <- read.csv("~/household_power_consumption.txt",sep=";",skip = 66636,nrows = 2880)
  colnames(d) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
  d$Date <- as.Date(d$Date,"%d/%m/%Y")
  d$Time <- strptime(d$Time,"%H:%M:%S")
  png(file = "plot1.png")
  hist(d$Global_active_power,xlab = "Global Active Power (kilowatts)" ,col = "red",main = "Global Active Power")
  dev.off()
}