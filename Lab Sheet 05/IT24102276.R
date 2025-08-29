setwd("C:\\Users\\it24102276\\Desktop\\IT24102276")
data <- read.table("Exercise - Lab 05.txt", header = TRUE,sep = ",")
fix(data)
attach(data)
names(data)<-c("x1")
attach(data)
hist(x1,main = "Histogram for Deliver Times")
histogram <- hist(x1,main = "Histogram for Deliver Times= x1", breaks = seq(20,70,length = 8),right = FALSE)

breaks <- round(histogram$breaks)
freq <- histogram$counts
mids <- histogram$mids
classes <- c()
for(i in 1:length(breaks)-1){
  classes[i] <- paste0("[",breaks[i],",",breaks[i+1],")")
}
cbind(Classes= classes,Frequency=freq)

plot(mids,freq,type = 'l', main = "Frequency Polygon for Deliver Time",xlab = "Deliver Times", ylab = "Frequency",ylim = c(0,max(freq)))
