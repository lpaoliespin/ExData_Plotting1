# Plot 1. Histogram of Global active power consumption

# Create the histogram
hist(hpc$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", 
     ylab="Frequency", col="red")

# Save file and close device
dev.copy(png, "plot1.png", width=480, height=480)
dev.off()
