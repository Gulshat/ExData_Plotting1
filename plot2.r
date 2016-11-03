# load data

source("loadData.r")

#creating plot

with(data_feb, plot(time, Global_active_power, type = "l",
                    ylab = "Global Active Power(kilowatts)",
                    xlab = "",
                    cex.lab = 0.7, cex.axis = 0.8,
                    main = "Global Active Power by day"))

#save plot png format

dev.copy(png, 'plot2.png', width = 480, height = 480)
dev.off()

