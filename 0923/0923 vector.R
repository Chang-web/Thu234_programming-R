
######
###### 0923 week2
###### vector

#### write function in r
#Clayton function
u = 0.5
v = 0.5
theta = 0.5
c <- (u^(-theta)+ v^(-theta)-1)^(-1/theta)
c
#Gumbel function:
#眖程ず场膀娄场だ场
g <- exp(-((-log(u))^theta + (-log(v))^theta)^(1/theta))
g
#plot pdf of standard normal distribution
x <- -3:3
x
mu = 0
sigma = 1
y <- 1/sqrt(2*pi)*(1/sigma)*exp(-(x-mu)^2/(2*(sigma^2)))
plot(x, y)  #瓜び筁彩罻

#seq:by秸俱丁禯lengthр秖单だだ澄Θ﹚计ヘ
#-3:3 单基 1.seq(-3,3,length = 7) 2.seq(-3, 3, by=1)
x <-  seq(-3, 3, length = 100)
y1 <- 1/sqrt(2*pi)*(1/sigma)*exp(-(x-mu)^2/(2*(sigma^2)))
length(y1)
plot(x,y1, type = "l")

#pdf of gamma distribution(e.g.chi-sq)
x <- 0:20
kappa = 1/2
theta = 2
y <- (1/(gamma(kappa)*(theta^kappa)))*(x^(kappa-1))*(exp(-x/theta))
plot(x,y, type = "l")


####耞粂猭
x <- rnorm(100, 0, 1)
z <- sort(x)
head(x,20)

#砞﹚耞set up condition
head(x > 0, 20)  #true or false
#[]:output under condition
head(x[x>0], 20) #only keep positive numbers
x[5] #report the 5th element of x 
x[1:10] #a vector with length = 10
#report elements in odd position
head(x[seq(1,100,2)], 20)
#report elements in even position
head(x[-seq(1,100,2)], 20)

head(x[-3], 20) #remove the 3rd element
#remove 1st to 5th elements
head(x[-(1:5)], 20) #x[-c(1:5)]
#remove elements in even position
head(x[-seq(2,100, 2)],20) # head(x[seq(1,100,2)], 20)


#use &(and) |(or)
head(x > 0 & x < 2, 20)  # 0<x<2 
head(x[x > 0 & x < 2], 20)
head(x>2 | x< -2) #abs(x)>2
sum(x>2 | x< -2) #count the number x satisfying the condition
x[x>2 | x< -2]
sum(x[x>2 | x< -2])




