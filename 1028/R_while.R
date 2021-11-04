
#### 1028 Lecture 07: Loop/while

#### Review for loops
A <- matrix(NA, 3, 4)
for(i in 1:3){
  
  # 可以再新增任務
  
  for(j in 1:4){
    A[i,j] = i + j 
  }
}

# factorial
f1 <-  function(n){
  p = 1
  for (x in 1:n){
    p = p*x
  }
  return(p)
}

# take log
# 計算連乘:先取對數再取指數
f2 <- function(n){
  temp <- 0
  for(k in 1:n){
  temp <- log(k) + temp
  }
  y<- exp(temp)
  return(y)
}
f2(10)

# while-連加
g <- function(n){ 
  x <- 0
  s <- 0
  while(x<=n){ 
  s<- s+x 
  x<- x+1 
  }
  s
}
g(5)

# exercise D
flip <- function(p){
  x <- 1
  y <- rbinom(1, 1, p)
  while(y== 0){
    y <- rbinom(1, 1, p)
    x <- x + 1
  }
  return(x)
}
p <- 0.005
flip(p)

### function and while
g <- function(p){
  x <- 1
  y <- rbinom(1,1,p)
  while(y == 0){
    x <- x + 1
    y <- rbinom(1, 1, p)
  }
  return(x)
}
g(0.005)

### exercise E:假設英檢成績為 score = sample(60:100, 1)若成績沒有超過85, 則必須準備下次重考。請統計最後考了幾次測驗才達標
score <-  sample(60:100, 1)
score
x <- 1
while(score < 85){
  score <-  sample(60:100, 1)
  print(score)
  x <- x + 1
}
x

# use for solve exercise F 
# 請找出 第100個偶數發生的位置
n <- 1000
number <- sample(0:100, n, replace = T)
result = NULL
for(i in 1:n){
  a <- number[i] %% 2
  if(a == 0){
  result <- c(result, i)
  }
}
result[100]

# use while solve exercise F 
n <- 1000
result = NULL
number <- sample(0:100, n , replace = T)
i <- 1
while(sum(result) < 100){
  b <- number[i] %% 2 
  if(b == 0){
    result <- c(result, T)
  }
  i <- i + 1
}
i

# hint
n <- 1000
number <- sample(0:100, n , replace = T)
i <- 1
y <- number[i]%%2
s <- 1*(y==0)
while(s < 100){
  i <- i + 1
  y <- number[i]%%2
  s <- s + 1*(y==0)
}


# plot
plot(-4:4,-4:4, type = "n", # 空座標
     xlab = "time", ylab = "rate", main = "10/28")
abline(0,1, lty =  3)


n = length(x)
for (i in i:n){
  point(x[i], y[i], pch = 20)
}
  
  
  
  