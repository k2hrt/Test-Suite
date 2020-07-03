# Generate the 1000-point test suite
# Initializations
ts<-1:1000
ts[1]=1234567890
# Generate data
for(i in 2:1000)
{
  ts[i]=(16807*ts[i-1])%%2147483647
}
# Scale data
for(i in 1:1000)
{
  ts[i]=ts[i]/2147483647
}
# Optionally show and plot the generated data
# Increase # R display digits to max
# options(digits=22)
# ts
# plot(ts, type=”l”)
# Restore normal # digits
# options(digits=7)
# Convert freq data to phase data
tsp<- diffinv(ts)
