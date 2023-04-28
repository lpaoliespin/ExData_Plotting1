# Plot 4. Combination of 4 plots: global active power, energy sub metering, 
# voltage over time, global reactive power over time

# The par() function sets the parameters for the plotting region. The "mfrow" argument
# specifies that the plotting region should have two rows and two columns, and the "mar" 
# argument sets the margin sizes for the bottom, left, top, and right of each plot, 
# respectively. The "oma" argument specifies the outer margins of the plotting region.
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))

# 1st plot
# The plot() function creates a line graph with the DateTime column of the "hpc" 
# data frame on the x-axis and the Global_active_power column on the y-axis.
# The "ylab" argument sets the label for the y-axis, and "pch" specifies that a dot
# should be used for each point in the graph. The "type" argument specifies that the
# graph should be a line graph. The x-axis label is left blank because no label is 
# specified in the "xlab" argument.
plot(hpc$DateTime, hpc$Global_active_power, ylab="Global Active Power", 
     xlab="", pch =".", type="l")

# 2nd plot
# The first line creates a line plot using the DateTime column as the x-axis and 
# Sub_metering_1 column as the y-axis. The y-axis label is set to "Energy sub metering", 
# and the x-axis label is left blank. The line color is set to black.
# The second and third lines add two more lines to the plot, one for Sub_metering_2 
# and one for Sub_metering_3. The line for Sub_metering_2 is colored red and the
# line for Sub_metering_3 is colored blue.
# The fourth line adds a legend to the plot. The legend is positioned in the top-right corner
# and displays the names of the three sub-metering columns (Sub_metering_1, Sub_metering_2,
# and Sub_metering_3) using the names function to select columns 6 through 8 of the data frame. 
# The legend is set to have no border using the "bty" argument. The line width is set to 1 and
# the colors are set to match the colors of the lines in the plot.
plot(hpc$DateTime, hpc$Sub_metering_1, ylab="Energy sub metering", xlab="", type="l", col="black")
lines(hpc$Sub_metering_2~hpc$DateTim, col='Red')
lines(hpc$Sub_metering_3~hpc$DateTim, col='Blue')
legend("topright", lwd=1, col=c("black", "red", "blue"), legend=names(hpc[,6:8]), bty="n")

# 3th plot
plot(hpc$DateTime, hpc$Voltage, ylab="Voltage", xlab="datetime", type="l")

# 4th plot
plot(hpc$DateTime,hpc$Global_reactive_power, ylab="Global reactive power", xlab="datetime", type="l")

# Save file and close device
dev.copy(png, "plot4.png", width=480, height=480)
dev.off()
