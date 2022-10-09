# problema 1 --------
library(tidyverse)
n=1000
a1=rnorm(n, 10, 1)
a2=rnorm(n, 10, 1)
a3=rnorm(n, 10, 1)
a4=rnorm(n, 10, 1)
a5=rnorm(n, 10, 1)
a6=rnorm(n, 10, 1)

cable=data.frame(a1,a2,a3,a4,a5,a6) %>% 
          apply(1,min)*6 #%>% 
summarytools::descr(cable) 
hist(cable)
sum(as.numeric((cable>50) & (cable<60)))/n

# problema 2 -----------
n=1000000
x=runif(n, 0,1)
y=runif(n, 0,1)
xy=data.frame(x,y)

d=function(x){
  sqrt((0.5-x[1])^2+(0.5-x[2])^2)
}

dist=apply(xy, 1,d)
sum(as.numeric(dist < 0.5))*4/n

# problema 3 -----------
n=1000
x1=rlnorm(n,2,1)
x3=rlnorm(n,2,1)
x2=rlnorm(n,1,.1)
x4=rlnorm(n,1,.1)

x12=apply(data.frame(x1,x2),1, min)
x34=apply(data.frame(x3,x4),1,min)
x1234= apply(data.frame(x12,x34),1,max)
summarytools::descr(x1234)

# problema 4 ---------
n=10000
x=rpois(n,45.62)
t=(log(15.3)-log(x/10))/0.0001210
summarytools::descr(t)
hist(t)
abline(v=c(9000,11000), col="red")
boxplot(t, horizontal = TRUE )
grid()
conteo= as.numeric((t > 9000) & (t < 11000)) 
sum(conteo)/n

# problema 5 ------

library(tidyverse)
n=100000
A=rbinom(n, 100,0.03)
B=rbinom(n, 100,0.05)
AB= data.frame(A,B) %>% 
  apply(1, sum) 

summarytools::descr(AB)

sum(as.numeric(AB >10))/n

