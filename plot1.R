# Plot 1. Histogram of Global active power consumption

# The hist() function creates a histogram plot of the data. The first argument, 
# hpc$Global_active_power, specifies the data to be plotted. The second argument,
# main="Global Active Power", sets the title of the plot to "Global Active Power".
# The third argument, xlab="Global Active Power (kilowatts)", sets the label for
# the x-axis to "Global Active Power (kilowatts)". The fourth argument, ylab="Frequency",
# sets the label for the y-axis to "Frequency". Finally, the fifth argument, col="red",
# sets the color of the bars in the histogram to red.
hist(hpc$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", 
     ylab="Frequency", col="red")

# Save file and close device
dev.copy(png, "plot1.png", width=480, height=480)
dev.off()
