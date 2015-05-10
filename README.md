## Introduction

This project uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, the "Individual household
electric power consumption Data Set" is available on
the following site:


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.


The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Loading the data





When loading the dataset into R, the following items have been considered:

* The original dataset has 2,075,259 rows and 9 columns. The 4 scripts in this repo only loads the data from the dates 2007-02-01 and 2007-02-02. 

* The Date and Time variables have been converted to Date/Time classes in R using the `strptime()` and `as.Date()` functions.




## Making the Plots

The overall goal here is simply to examine how household energy usage
varies over a 2-day period in February, 2007. 

The R scripts will do the following

* Construct the plot and save it to a PNG file with a width of 480
pixels and a height of 480 pixels.

* Saves each of the plot files as `plot1.png`, `plot2.png`, `plot3.png`, `plot4.png`

* A separate R code file (`plot1.R`, `plot2.R`, etc.) has been created that
constructs the corresponding plot, i.e. code in `plot1.R` constructs
the `plot1.png` plot. The code file **includes the full code for reading
the data** so that the plots can be fully reproduced. Also
included is the code that creates the PNG file.

* There are four PNG files and four R code files.


The four plots that will be constructed are shown below. 


### Plot 1


![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 


### Plot 2

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 


### Plot 3

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4.png) 


### Plot 4

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5.png) 