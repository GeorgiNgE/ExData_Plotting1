plot1<-read.table("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors = FALSE)
plot1$Date<-as.Date(plot1$Date,format = "%d/%m/%Y")
plot11<-plot1[plot1$Date >= "2007-02-01" & plot1$Date <= "2007-02-02",]
plot11$Global_active_power<-as.numeric(plot11$Global_active_power)
png("plot1.png")
hist(plot11$Global_active_power,col="orange",main="Global Active Power",xlab="Global Active Power (kilowatts")
dev.off()

