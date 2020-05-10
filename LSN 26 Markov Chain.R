# Lesson 26
# Markov Chain

# example 8.2
# make state transition matrix
P = matrix(c(1/3,1/3,1/3,.7,.3,0,1,0,0),nrow=3,byrow=TRUE);print(P)

pi0 = c(1,0,0)

# use %*% for matrix multiplication
pi1 = pi0 %*% P;print(pi1)
pi2 = pi1 %*% P;print(pi2)

# or...
matrixPower = function(M,n){
  M0 = M
  if (n==1) return(M)
  for (i in 2:n) {
    M = M %*% M0
    }
  return(M)
}

c(1,0,0) %*% matrixPower(P,4)
