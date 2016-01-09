#Combine 4 graphs 
par(mfcol = c(2,2))

##plot2
# Graph for date/time vs global active power data
plot(strptime(pwrcons$Timestamp, "%d/%m/%Y %H:%M:%S"), pwrcons$Global_active_power, type = "l", xlab = "", ylab = "Global-Active-Power(kilowatts)")

##plot3
#Graph for date/time v Sub metering 1 data
plot(strptime(pwrcons$Timestamp, "%d/%m/%Y %H:%M:%S"), pwrcons$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")

# With date/time v Sub metering 2 data in red
lines(strptime(pwrcons$Timestamp, "%d/%m/%Y %H:%M:%S"), pwrcons$Sub_metering_2, type = "l", col = "red" )

#With date/time v Sub metering 3 data in blue
lines(strptime(pwrcons$Timestamp, "%d/%m/%Y %H:%M:%S"), pwrcons$Sub_metering_3, type = "l", col = "blue" )

#Graph legend 
legend("topright", lty= 1, col = c("Black", "red", "blue"), legend = c( "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


#redo first graph 
#This graphs date/time v Voltage
plot(strptime(pwrcons$Timestamp, "%d/%m/%Y %H:%M:%S"), pwrcons$Voltage, type = "l", 
     xlab = "datetime", ylab = "Voltage")

#Redo second graph 
#This plots datetime v global reactive power
plot(strptime(pwrcons$Timestamp, "%d/%m/%Y %H:%M:%S"), pwrcons$Global_reactive_power, type = "l", 
     xlab = "datetime", ylab = "Global_reactive_power")

