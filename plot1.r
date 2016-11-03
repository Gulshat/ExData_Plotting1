# Plot 1

#load source
source("loadData.r")

#Creat Plot
with(data_feb, hist(Global_active_power, col = "red",
                    breaks = 15,
                    main = "Global Active Power",
                    xlab = "Global Active Power(kilowatts)",
                    ylim = c(0, 1200)))

# Copy in png format

dev.copy(png, "plot1.png", width = 480, height = 480)
dev.off()
