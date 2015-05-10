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
png(filename = "plot3.png",
    width = 480, height = 480, units = "px", 
    bg = "white")

# Create line plot
plot(plotData$DateTime,plotData$Sub_metering_1,type="l",
     xlab="",ylab="Energy sub metering")
lines(plotData$DateTime,plotData$Sub_metering_2,type="l",col="red")
lines(plotData$DateTime,plotData$Sub_metering_3,type="l",col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       lty=c(1,1,1), col=c("black","red","blue"))

# Disconnect Data source
dev.off()