# Loading the data

power <- read.table("household_power_consumption.txt", skip=1, sep=";")

# dim(power)
# 2075259       9

# head(power,5)
# V1       V2    V3    V4      V5     V6    V7    V8 V9
# 16/12/2006 17:24:00 4.216 0.418 234.840 18.400 0.000 1.000 17
# 16/12/2006 17:25:00 5.360 0.436 233.630 23.000 0.000 1.000 16
# 16/12/2006 17:26:00 5.374 0.498 233.290 23.000 0.000 2.000 17
# 16/12/2006 17:27:00 5.388 0.502 233.740 23.000 0.000 1.000 17
# 16/12/2006 17:28:00 3.666 0.528 235.680 15.800 0.000 1.000 17

# Copy paste the names of the 9 variables in the dataset are taken from the UCI web site

names(power) <- c("Date", "Time", "Global_active_power", 
                  "Global_reactive_power", "Voltage", "Global_intensity", 
                  "Sub_metering_1", "Sub_metering_2","Sub_metering_3")

# We will only be using data from the dates 1/2/2007 and 2/2/2007.

subpower <- subset(power, power$Date == "1/2/2007" | power$Date == "2/2/2007")

# Creating the first plot.

hist(as.numeric(as.character(subpower$Global_active_power)), col = "red", 
     main = "Global Active Power", xlab = "Global active power (in kilowatts)")

# Exporting the plot in the Plots panel and naming it plot1 (480/480px).








