# Date conversion.

subpower$Date <- as.Date(subpower$Date, "%d/%m/%Y")
subpower <- subset(subpower, Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))

# Checking date conversion turnout.

# head(subpower$Date)
# "2007-02-01" "2007-02-01" "2007-02-01" "2007-02-01" "2007-02-01" "2007-02-01"

# Combining Date and Time column.

dateTime <- paste(as.Date(subpower$Date), subpower$Time)
subpower$dateTime <- as.POSIXct(dateTime)

# Creating plot2.

plot(subpower$Global_active_power~subpower$dateTime, type = "l", ylab = 
       "Global Active Power (kilowatts)", xlab = "")