# Lesson 30
# Linear Regression

# define coefficient matrix
A = matrix(c(1,1,1,2,1,3),nrow=3,byrow=TRUE);print(A)
# define the solution matrix
b = matrix(c(3,11,7),nrow=3,byrow=TRUE);print(b)
# find the C and D values, x hat matrix
AtA = t(A)%*%A
Atb = t(A)%*%b
xhat=solve(AtA,Atb);print(xhat)

# calculate p vector
p = A%*%xhat;print(p)
# calculate error vector
e = b-p;print(e)
