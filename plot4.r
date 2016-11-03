# load data

source("loadData.r")

# creating parametrs

par(mfrow = c(2,2))

# topleft plot 1

with(data_feb, plot(time, Global_active_power, type = "l",
                    cex.lab=0.7, cex.axis=0.8, xlab ="",
                    ylab = "Global Active Power(kilowatts)"))

# topright plot 2

with(data_feb, plot(time, Voltage, type = "l", cex.lab = 0.7,
                    cex.axis = 0.8, ylab = "Voltage", xlab = ""))

# bottom left plot 3

with(data_feb, plot(time, Sub_metering_1, type = "l",
                    ylab = "Energy Sub Metering", cex.lab = 0.7, 
                    cex.axis = 0.8))
# add lines
lines(data_feb$time, data_feb$Sub_metering_2, col = "red")
lines(data_feb$time, data_feb$Sub_metering_3, col = "blue")

# add legend
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", 
                             'Sub_metering_3'),
       lty = c(1,1,1), col = c('black', 'red', 'blue'), cex = 0.7, 
       bty ="n")

# bottom right plot 4

with(data_feb, plot(time, Global_reactive_power, type = "l",
                    lwd = 0.5, ylab = 'Global Reactive Power',
                    cex.lab = 0.7, cex.axis = 0.8))

# copy png file

dev.copy(png, "plot4.png", width = 480, height = 480)
dev.off()


