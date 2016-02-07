##
## Exploratory Data Analysis
##
## Project Week 1 - February 7th 2016
##
## File: plot4.R
## 
## Purpose: build 4 plots that represent the Individual household electric power consumption over February 1 & 2 2007
##

# Download and read the data
source("get_energy_data.R")

# --------------------------------------------
# Plot 4
# Energy submetering per hour over two days
# One line for each metering measure

# We reuse the code that drew previous plot 2 & plot 3

# Construct the plots and save it to a PNG file with a width of 480 pixels and a height of 480 pixels
# Open the graphic device as PNG file
png(filename = "plot4.png", width = 480, height = 480)

# We set the canvas to 2 rows and 2 columns
par(mfcol = c(2, 2)) # we will fill out the canvas column by column

# Plot 4.1
# This first plot will appear on top left (reuse code from previous plot 2)
# Difference from previous plot 2: Y axis legend no longer refer to "kilowatts"

# We remove the X label: xlab = 0
# We set the type of point to stair steps: type = "s"
plot(x = plot_data$DateTime, y = plot_data$Global_active_power, xlab = "",
     ylab = "Global Active Power", type = "s")

# Plot 4.2
# This second plot will appear on bottom left (reuse code from previous plot 3)
# Difference from previous plot: we remove the box around the legend: bty = "n"

# We set the type of point to stair steps: type = "s"
plot(x = plot_data$DateTime, plot_data$Sub_metering_1, xlab = "",
     ylab = "Energy sub metering", type = "n")

points(plot_data$DateTime, plot_data$Sub_metering_1, type = "s", col = "black")
points(plot_data$DateTime, plot_data$Sub_metering_2, type = "s", col = "red")
points(plot_data$DateTime, plot_data$Sub_metering_3, type = "s", col = "blue")

# lty: mandatory to get the lines in the legend
legend("topright", lty = c(1, 1, 1), col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       bty = "n")


# Plot 4.3
# This third plot will appear on top right
# We set the type of point to stair steps: type = "s"
plot(x = plot_data$DateTime, y = plot_data$Voltage, xlab = "datetime",
     ylab = "Voltage", type = "s")


# Plot 4.4
# This fourth plot will appear on bottom right
# We set the type of point to stair steps: type = "s"
plot(x = plot_data$DateTime, y = plot_data$Global_reactive_power, xlab = "datetime",
     ylab = "Global_reactive_power", type = "s")

# Close the graphical device
dev.off()

# --------------- End of plot4.R --------------- 
