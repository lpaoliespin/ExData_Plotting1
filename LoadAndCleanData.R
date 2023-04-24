# Load and Clean the Data

# Setting work directory
# setwd('Set here your work directory')
# setwd('~/git/coursera/datascience/jhu/exploratory-data-analysis/ExData_Plotting1')


# Download the file and unzip the archive to the current working directory

dataUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(dataUrl, destfile="./Power_consumption.zip", method="curl")
zipPath <- "./Power_consumption.zip"
unzip(zipfile = zipPath, exdir = "./")

# Load the table data
hpc <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", 
                  colClasses=c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

# Removing incomplete observations
hpc <- hpc[complete.cases(hpc), ]

# Converting Date and Time variables to Date/Time classes
hpc$Date <- as.Date(hpc$Date, format="%d/%m/%Y")
hpc$Time <- strptime(paste(hpc$Date, hpc$Time), "%F %T")

# Filtering data set from Feb 1st 2007 to Feb 2nd 2007
hpc <- subset(hpc, Date %in% as.Date(c("2007-02-01", "2007-02-02")))

# Renaming column Date as DateTime
names(hpc)[names(hpc) == "Time"] <- "DateTime"

## Removing Date column
hpc <- hpc[ ,!(names(hpc) %in% c("Date"))]



