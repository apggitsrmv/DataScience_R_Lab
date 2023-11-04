
sp<-read.table('C:/Users/MCA-29/R Practical/stock_daily.csv', sep=",", header= TRUE)
print(sp)
sp_ts <- ts(sp, start=2016, frequency=365)
print(sp_ts)
plot.ts(sp_ts,col=10, main="Daily Stock Prices", ylab="Price")

sp_linear<-log(sp_ts)
plot.ts(sp_linear, main="Daily Stock Prices (log)", ylab="Price", col=4)
par(mfrow = c(1,2))
plot.ts(sp_ts,col=4, main="Daily Stock Prices", ylab="Price")
plot.ts(sp_linear, main="Daily Stock Prices (log)", ylab="Price", col=4)

sp_linear_diff <- diff(sp_linear)
plot.ts(sp_linear_diff, main="Daily Stock Prices (log)", ylab="Price", col=4)


par(mfrow = c(1,2))
plot.ts(sp_ts,main="MSFT Stock Prices",ylab="Prices")