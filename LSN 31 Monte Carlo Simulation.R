# Lesson 31
# Monte Carlo Simulation
 
X = runif(100000);hist(X)

# create equation 1
consecutive = function(x){
  y = x[1]*x[2]*x[3]+
    x[2]*x[3]*x[4]+
    x[3]*x[4]*x[5]+
    x[4]*x[5]*x[6]+
    x[5]*x[6]*x[7]
  if (y >= 1){return(1)}else{return(0)}
}
# enter forecast from days
x = c(1,1,1,0,1,0,1)
consecutive(x)

# rainy day function
# u are the random variates
# p is the probability of rain
rainyDays = function(p){
  u = runif(7)
  #print(u)
  X = (u < p)*1
  #print(X)
  y = consecutive(X)
  return(y)
}
rainyDays(0.5)

ans = 0
N = 100000
p = 0.5
for (i in 1:N){
  ans[i] = rainyDays(p)
}
mean(ans)
sd(ans)

# cat function puts multiple strins in a row
# finds an interval
cat("(",mean(ans)-2*sd(ans)/sqrt(N),",",mean(ans)+2*sd(ans)/sqrt(N),")\n")
