
df <- read.csv("data/series.csv")

# Add a single order-by column
df$ym <- df$year + (df$month-1)/12
zDat <- zoo(df$dat, order.by = df$ym, frequency = 12)

plot(zDat)

fit <- stlf(zDat)
fitA <- Arima(zDat)
