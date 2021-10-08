

##### 1007 rbind/cbind/define function

##review:
x <- 10
if(x < 0){
  y = 1
} else if(x > 0 & x < 1){
  y = 0
} else{
  y = 3
}
y

## array/matrix
A <- matrix(5:10, 2, 3)
A[2,2] # the element
A[ ,2] # the second column
A[2, ] # the second row

B <- matrix(1:6, 2, 3)
rbind(A,B)
C <- rbind(A,B)
D <- rbind(C, 1:4)

D <- rbind(C, 2:4)

E <- cbind(D, 1:5)

# apply
apply(E, 2, min) # 2:column；沿著行找最小值
apply(E, 1, max) # 1:column；沿著列找最大值




## exercise
M <- matrix(1:10, 2, 5)
N <- matrix(11:20, 2, 5)
P <- rbind(M, N)
# find margin
sum(P[ ,1]) # margin in 1st column
apply(P, 1, sum) # find row margin
apply(P, 2, sum) # find column margin 


## exercise A

## Define function
# Usage:
#f <- function(x){
#  工作項目
#  return(y)
#}

## exercise B-1
f <- function(x){
  y = x^3 - x + 1
  return(y)
}
f(sqrt(6))


## exercise B-2
S <- function(a, r, n){
  y = sum(a*r^(seq(0, n-1)))
  return(y)
}
S(2.1,0.5,100)

### 不建議用公式
S <- function(a, r, n){
    y = a * r^(n-1)
    return(y)
}
sum(S(2.1, 0.5, 1:100))

###
S <- function(a, r, n){
  (a/(1 - r))*(1 - r)^n
}
S(2.1, 0.5, 100)

### more examples
mean.var.fun <- function(x){
  n <- length(x)
  mx <- sum(x)/n
  a <- (x - mx)^2
  vx <- sum(a)/(n-1)
  ans <- list(mx,vx)
  names(ans) <- c("mean", "var")
  return(ans)
}
x <- 1:100
result <- mean.var.fun(x)
result$mean
result$var











