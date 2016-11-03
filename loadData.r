# Data load

data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE,
                   na.strings = "?")
#showing data

head(data)
str(data)

# We will use data only two days: 1/2/2007 and 2/2/2007

data_feb <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
rm(data)

# convert data variable to Data class

data_feb$Date <- as.Date(data_feb$Date, format = "%d/%m/%Y")
str(data_feb)

# convert the time variable to Time class

data_feb$time <- strptime(paste(data_feb$Date, data_feb$Time), 
                          format="%Y-%m-%d %H:%M:%S")
str(data_feb)
