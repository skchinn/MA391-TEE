# Lesson 25
# Continuous Probability

# Poisson
# dpois = density
# ppois = distribution function, cdf
# qpois = quantile function
# rpois = produce random variates from distribution

# LSN 25 - ice cream parlor example
dpois(0,2*1)

# create pmf for many possibilities
x = seq(0,10)
px = dpois(x,2*1)
pmf = data.frame(px = round(px,4))
rownames(pmf) = x
print(pmf) # prob. of getting 0 is 0.1353, if getting 1 is 0.2702

# part c of the example
# using the density
1-(dpois(0,2*2)+dpois(1,2*2))
# using ppois()
1-ppois(1,2*2)

x = seq(0,10)
px = dpois(x,4)
Fx = ppois(x,4)
distribution = data.frame(px = round(px,4), Fx = round(Fx,4))
rownames(distribution) = x
print(distribution) 
