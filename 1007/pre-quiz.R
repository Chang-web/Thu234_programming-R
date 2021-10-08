
#1. 造數列: 1, -1 /2 , 1/ 3 , - 1 /4 , · · · , 1 /19 , -1/ 20
## sol_1
a <- seq(1:20)
b <- rep(1, 20)
c <- (-1)^(0:19)
d <-  c*b/a
d

## sol_2
e <- 1/seq(1:20)
c <- (-1)^(0:19)
f <- c*e


#2. 造數列: 1, 10, 100, 1000,..., 10^100
## sol_1
a <- 0:100
b <- 10^a
b

## sol_2
library(bsts)
x <- GeometricSequence( length = 101,
                       initial.value = 1,
                       discount.factor = 10)
x


#3.
math.score <- sample(0:100, 100, replace=TRUE)
# (a) 計算前 10 位同學 (座號 1 號至 10 號) 之成績平均數
mean(math.score[1:10])
# (b) 共有多少人及格
length(math.score[which(math.score >= 60)])

# (c) 成績及格之同學座號為何
which(math.score >= 60)

###判斷及格條件，同時操作(b)(c)問題
temp <- math.score >= 60
a <- 1:100
a[temp] ## (c)
length(a[temp]) ##(b)
sum(temp) ##(b)

# dummies variables
temp2 <- 1*(math.score >= 60)
sum(temp2)  ##(b)



# (d) 找出Q2(中位數)
median(math.score)

# find distinct values in data
unique(math.score)
