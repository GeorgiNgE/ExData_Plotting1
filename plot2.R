plot1<-read.table("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors = FALSE)
plot1$Date<-as.Date(plot1$Date,format = "%d/%m/%Y")
plot11<-plot1[plot1$Date >= "2007-02-01" & plot1$Date <= "2007-02-02",]
plot11$datetime <- strptime(paste(plot11$Date,plot11$Time),"%Y-%m-%d %H:%M:%S",tz="UCT")
attach(plot11)
png("plot2.png")
plot(datetime,Global_active_power,
     type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()


