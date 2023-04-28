# Plot 3. Energy sub metering

# The "with" function is used to specify that the variables being plotted come from
# the same data frame "hpc".
# The "plot" function is used to create the initial plot of Sub_metering_1 against
# DateTime.
# The type="l" argument specifies that a line plot should be created.
# The "ylab" argument specifies the label for the y-axis and the "xlab" is left blank.
# The "lines" function is used twice to add two more lines to the plot, one for 
# Sub_metering_2 and one for Sub_metering_3.
# The "col" argument specifies the color of the lines.
with(hpc, {
  plot(Sub_metering_1~DateTime, type="l",
       ylab="Energy sub metering", xlab="")
  lines(Sub_metering_2~DateTime, col='Red')
  lines(Sub_metering_3~DateTime, col='Blue')
})

# Finally, the "legend" function is used to add a legend to the plot in the top-right corner. 
# The "col" argument specifies the colors of the legend text, the "lwd" argument specifies 
# the line width of the legend lines, and the "c" argument specifies the text labels for 
# each line in the legend.
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Save file and close device
dev.copy(png, "plot3.png", width=480, height=480)
dev.off()
