# Lesson 24
# Discrete Probability

# second example from LSN 24 notes
# input support
x = c(1,2,4,8,16)
# input probabilities
pmf = (c(0.05,.1,.35,.4,.1))

cdf = cumsum(pmf)

# make bar chart for PMF
barplot(pmf,names.arg = x, main = "Probability Mass Function (pmf)")

# make chart for CDF
# start at 0
# increment at values of x
# go past the end of x
plot(c(-5,x,tail(x,1)+2),c(0,cdf,1),type="s")

# calculate expected value
mu = sum(x*pmf)

# calculate variance
v = sum((x-mu)^2*pmf)

# put in data frame to view
X = data.frame(x = x, pmf = pmf, cdf = cdf)
print(X)
print(t(X))

# P(X=x)
x=4
X$pmf[which(X$x==x)]

# P(X<=x)
X$cdf[which(X$x==x)]

# E(X^2)
x = c(1,2,4,8,16)
sum(x^2*pmf)-6.45^2
