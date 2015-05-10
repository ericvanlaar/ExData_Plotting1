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
png(filename = "plot1.png",
    width = 480, height = 480, units = "px", 
    bg = "white")

# Create Histogram
hist(plotData$Global_active_power,main="Global Active Power",
     xlab="Global Active Power (Killowats)",col="red",ylim=lim)

# Disconnect Data source
dev.off()