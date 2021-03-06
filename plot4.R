# Load required library
library(sqldf)


loadData <- function(){
        
        file <- "./ex-data-household_power_consumption/household_power_consumption.txt"
        
        # Select only relevant rows
        select <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
        
        # Read csv - Uses 'sqldf' package
        data <- read.csv.sql(file, sql=select, sep=";")
        
        # Convert Date & Time variables to Date/Time classes
        data$DateTime <- as.POSIXct(strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S"))
        
        return(data)
}

plotData <- loadData()

# Set limits of plot
lim <- c(0,1200)

# Load graphics device - png
png(filename = "plot4.png",
    width = 480, height = 480, units = "px", 
    bg = "white")

par(mfrow=c(2,2))

# Create plot #1
plot(plotData$DateTime,plotData$Global_active_power,type="l",
     xlab="",ylab="Global Active Power")

# Create plot #2
plot(plotData$DateTime, plotData$Voltage, type="l", 
     xlab="datetime", ylab="Voltage")

# Create plot #3
plot(plotData$DateTime,plotData$Sub_metering_1,type="l",
     xlab="",ylab="Energy sub metering")
lines(plotData$DateTime,plotData$Sub_metering_2,type="l",col="red")
lines(plotData$DateTime,plotData$Sub_metering_3,type="l",col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       lty=c(1,1,1), col=c("black","red","blue"))

# Create plot #4
plot(plotData$DateTime, plotData$Global_reactive_power, type="l", 
     xlab="datetime", ylab="Global_reactive_power")

# Disconnect Data source
dev.off()