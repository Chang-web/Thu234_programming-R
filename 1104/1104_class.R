
#### 1104 repeat and next

#### Exercise A (next)
x <- seq( -0.9, 0.9, by=0.1)
n <- length(x)
ans <- rep(0, n)
for ( i in 1:n){
  if (x[i]<0){ 
    ans[i] <- x[i] # 如果是負數，直接輸出原始值
    #print(c(i, ans[i]))
    next # next i
  }
  ans[i] <- sqrt(x[i]) # 如果是正數，開根號
  #print(c(i, ans[i]))
}

### exercise A (if else)
x <- seq( -0.9, 0.9, by=0.1)
ifelse(x < 0, x, sqrt(x))


#### exercise B (break)
y <- seq( -0.9, 0.9, by=-0.1) # increasing seq
n <- length(y)
ans <- rep(0, n)
for (i in 1:n){
  if (y[i]<0){ 
    break # 如果y小於0，退出整個迴圈
    # 因為第一個值-0.9 < 0，跳出迴圈，回傳原本設定的ans(zero vector)
  }
  ans[i] <- sqrt(y[i])
}
ans

y <- seq( 0.9, -0.9, by=-0.1) # decreasing seq
n <- length(y)
ans <- rep(0, n)
for (i in 1:n){
  if (y[i]<0){ 
    break
    # 到第十個值才 < 0，跳出回圈，因此第十個以後的數字為0
  }
  ans[i] <- sqrt(y[i])
}
ans

#### exercise C (repeat)
# 執行工作B, 直到條件A為TRUE時停止執行
# repeat{
#        B
#        if(A) break
# }
# EX: 一直丟銅板直到出現第一次正面
# repeat
set.seed(1)
x <- 0
repeat{
  x <-  x+1
  y <-  rbinom(1, 1, 0.05)
  if(y == 1) break
}
x

# while
set.seed(1)
x <- 1
y <-  rbinom(1, 1, 0.05)
while(y < 1){
  x <-  x+1
  y <-  rbinom(1, 1, 0.05)
  
}
x

## 一直丟銅板直到出現兩次正面
x <- 0
z <- 0
repeat{
  x <- x + 1
  y <- rbinom(1, 1, 0.05)
  z <- z + y
  if(z == 2) break
}
x



#### exercise D
## while
# sol-1
i <- 1
a <- c()
a[i] <- 2
while(i < 10){
  a[i + 1] <- sqrt(a[i])
  i <- i + 1
}
a[10]

# sol-2
a <- 2
x <- 1
while(x < 10){
  a <- sqrt(a)
  x <- x + 1
  paste(print(x), print(a), sep = " ")
}


## repeat
# sol-1
i <- 1
a <- c()
a[i] <- 2
repeat{
  a[i + 1] <- sqrt(a[i])
  i <- i + 1
  if(i >= 10) break
}
a[10]

# sol-2
a <- 2
x <- 1
repeat{
  a <- sqrt(a)
  print(a)
  x <- x + 1
  print(x)
  if (x >= 10) break
}

#### exercise E:需要區分前後新舊的x值，並在迴圈內更新
# repeat:逼近正根1.414214
n <- 0
x_old <- 1
repeat{
  x_new <- x_old - (x_old^2 - 2)/(2*x_old)
  print(c(x_old, x_new))
  d <- abs(x_new - x_old)
  x_old <- x_new
  n <- n + 1
  if(d < 0.001) break
}
d
n # 迭代4次後，前後項相差2.1239e-06 < 0.001。

# repeat:逼近負根-1.414214
n <- 0
x_old <- -2
repeat{
  x_new <- x_old - (x_old^2 - 2)/(2*x_old)
  print(c(x_old, x_new))
  d <- abs(x_new - x_old)
  x_old <- x_new
  n <- n + 1
  if(d < 0.001) break
}
d
n 

# while
# positive root
n <- 1
x_old <- 1
x_new <- x_old - (x_old^2 - 2)/(2*x_old)
d <- abs(x_new - x_old)
while(d >= 0.001 ){
  x_old <- x_new
  print(c(x_old, x_new))
  x_new <- x_old - (x_old^2 - 2)/(2*x_old)
  d <- abs(x_new - x_old)
  n <- n + 1
}
d
n

# negative root
n <- 1
x_old <- -2
x_new <- x_old - (x_old^2 - 2)/(2*x_old)
d <- abs(x_new - x_old)
while(d >= 0.001 ){
  x_old <- x_new
  print(c(x_old, x_new))
  x_new <- x_old - (x_old^2 - 2)/(2*x_old)
  d <- abs(x_new - x_old)
  n <- n + 1
}
d
n


