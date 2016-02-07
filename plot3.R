##
## Exploratory Data Analysis
##
## Project Week 1 - February 7th 2016
##
## File: plot3.R
## 
## Purpose: Plot the Energy Sub metering (Watt-hour) over the two days in February 1 & 2 2007
##

# Download and read the data
source("get_energy_data.R")

# --------------------------------------------
# Plot 3
# Energy submetering per hour over two days
# We use one different color line for each metering measure

# Construct the plots and save it to a PNG file with a width of 480 pixels and a height of 480 pixels
# Open the graphic device as PNG file
png(filename = "plot3.png", width = 480, height = 480)

# We set the type of point to stair steps: type = "s"
# We don't display the graphic (type = "n") because we will plot the data subset by subset
plot(x = plot_data$DateTime, plot_data$Sub_metering_1, xlab = "",
     ylab = "Energy sub metering", type = "n")

# We plot the data, subset by subset
points(plot_data$DateTime, plot_data$Sub_metering_1, type = "s", col = "black")
points(plot_data$DateTime, plot_data$Sub_metering_2, type = "s", col = "red")
points(plot_data$DateTime, plot_data$Sub_metering_3, type = "s", col = "blue")

# lty: mandatory to get the 3 lines in the legend with black, red & blue colors
legend("topright", lty = c(1, 1, 1), col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Close the graphical device
dev.off()

# --------------- End of plot3.R --------------- 
