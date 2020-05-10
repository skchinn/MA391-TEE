# Lesson 28
# Continuous Time Markov Chain

# Discrete review
P = matrix(c(0,1/3,2/3,1/2,0,1/2,3/4,1/4,0),nrow=3,byrow = TRUE);print(P)
M = t(P)-diag(3);print(M)
PI = rbind(M,c(1,1,1)); print(PI)
b = matrix(c(0,0,0,1));print(b)
solve(t(PI)%*%PI,t(PI)%*%b)

# Continous
P = matrix(c(-1,1/4,1/4,
             1/3,-1/2,1/12,
             2/3,1/4,-1/3),nrow=3,byrow=TRUE);print(P)
PI = rbind(P,c(1,1,1));print(PI)
solve(t(PI)%*%PI,t(PI)%*%b)
