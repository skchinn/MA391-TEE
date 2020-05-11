# Lesson 32
# Monte Carlo Methods
# Invert CDF

# get random variates
u = runif(10000)
# use hist to show uniformity
hist(u)

# use formula
x = 8+sqrt(36*u)
# use hist to show triangular distribution
hist(x)
