
# Making the data ---------------------------------------------------------

set.seed(100)
# Linear trend + sin + noise
linDat <- 1:120/5
tDat <- 5 + linDat + rnorm(120, 0, 1) + 5*sin(120*1:120/10)

#plot(tDat, type='l')

# Add to a data.frame
df <- data.frame(year=rep(2005:2014, each=12), month=rep(1:12,10), dat=tDat)

write.csv(df, "series.csv", row.names=FALSE)



