plot1<-read.table("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors = FALSE)
plot1$Date<-as.Date(plot1$Date,format = "%d/%m/%Y")
plot11<-plot1[plot1$Date >= "2007-02-01" & plot1$Date <= "2007-02-02",]
plot11$datetime <- strptime(paste(plot11$Date,plot11$Time),"%Y-%m-%d %H:%M:%S",tz="UCT")
attach(plot11)
png("plot4.png")
par(mfrow=c(2,2))
plot(datetime,Global_active_power,
     type="l",xlab="",ylab="Global Active Power (kilowatts)")
plot(datetime,Voltage,
     type="l",ylab="Voltage")
plot(datetime,Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
lines(datetime,Sub_metering_2,type="l",col="red")
lines(datetime,Sub_metering_3,type="l",col="blue")
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd = c(1,2,3),cex=0.7)
plot(datetime,Global_reactive_power,
     type="l",ylab="Global Reactive Power")
dev.off()