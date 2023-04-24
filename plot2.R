# Plot 2. A visualization of how the global active power varies over time

# Using the "with" function to specify the data frame for the variables used in
# the plot, so there is no need to repeatedly specify the data frame name within
# the plot function.
# Setting the "Global Active Power (kilowatts)" as the y-axis label, and no label
# for the x-axis. And type="l", the plot function will connect the data points 
# using straight lines, resulting in a line plot that shows the trend of the 
# "Global_active_power" variable over time
with(hpc, {
  plot(Global_active_power~DateTime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
})

# Save file and close device
dev.copy(png, "plot2.png", width=480, height=480)
dev.off()
