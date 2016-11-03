# load data

source("loadData.r")

# Plot3 creating

with(data_feb, plot(time, Sub_metering_1, type = "l",
                    ylab = "Energy Sub Metering", cex.lab = 0.7,
                    main = "Sub Metering 1, 2, 3 by days"))

#add 2 lines

lines(data_feb$time, data_feb$Sub_metering_2, col="red")
lines(data_feb$time, data_feb$Sub_metering_3, col="blue")

# add legend

legend("topright", legend = c('Sub_metering_1', 'Sub_metering_2', 
                              'Sub_metering_3'), lty=1, lwd = 2,
       col = c("black", "red", "blue"), cex = 0.8)

# saving plot in png format

dev.copy(png, "plot3.png", width = 480, height = 480)
dev.off()
