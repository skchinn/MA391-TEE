# Lesson 29
# Continous Time Markov Chain
# Birth/Death Process

# Forklift problem
lam = 4.5
mu = 7.3
ro = lam/mu
P0 = (1-ro)/(1-ro^28)
pow = seq(1,27)
P = 0
for (i in 1:length(pow)){P[i]=P0*ro^pow[i]}
print(P)
result = data.frame(Xt = 0:27,P = round(c(P0,P),5))
print(result)

bb = barplot(c(P0,P[1:10]),names.arg = 0:10,ylim = c(0,0.43))
text(bb,c(P0,P[1:10])+.02,labels = round(c(P0,P[1:10]),3),cex = 0.8)
