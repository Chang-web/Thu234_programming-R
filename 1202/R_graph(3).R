

##### R_graph(3)

# 多張圖表

par(mfrow=c(2,3))
x <-  iris[,1]
plot(x)
hist(x)
boxplot(x)

# layout與par相似, 但比較有彈性
# layout 調整圖擺放的位置及大小
mat1 <- matrix(c(1,2,1,3), 2, 2) #可以換數字
layout(mat1)#空圖
plot(x)#圖1
hist(x)#圖2
boxplot(x) #圖3

mat2 <- matrix(c(2,1,0,3), 2, 2) #可以換數字
layout(mat2)#空圖
plot(x)#圖1
hist(x)#圖2
boxplot(x) #圖3


# layout調整邊界間距
# exercise A
mat1 <- matrix(c(1,2,1,3), 2, 2) #可以換數字
layout(mat1, # 比例
       widths = c(3,1),
       heights = c(2,1))
plot(x)#圖1
hist(x)#圖2
boxplot(x) #圖3

mat2 <- matrix(c(2,1,0,3), 2, 2) #可以換數字
layout(mat2,
       widths = c(3,1),
       heights = c(1,2)
       )#空圖
plot(x)#圖1
hist(x)#圖2
boxplot(x) #圖3

# exercise B
library(ggplot2)
mat3 <- matrix(c(0,1,0,2,3,4,0,5,0), 3,3)
layout(mat3,
       widths = c(1,1,1),
       heights = c(1,1,1))
x <- iris$Petal.Length
y <- iris$Sepal.Length
a <- as.data.frame(x)
boxplot(x)


hist(y, 
     main = "Histogram of Sepal.Length",
     xlab = "Sepal.Length",
     ylab = "Frequency")
plot(y,x, xlab="Petal.Length", ylab = "Sepal.Length")
boxplot(y, horizontal = TRUE)
qplot(x,geom = "histogram", bandwidth = 0.5 ) + coord_flip()

#
ggplot(data = a, aes(a$x)) + 
  geom_histogram(color = "black", fill = "white") + 
  coord_flip()


# 
boxplot(x, horizontal = T)
boxplot(count ~ spray, data = InsectSprays, 
        col = "lightgray")

# exercise C
boxplot(iris[,c(3,4,1,2)])

# example
mat <- cbind(Uni05 = (1:100)/21, Norm = rnorm(100),
             `5T` = rt(100, df = 5), Gam2 = rgamma(100, shape = 2))
boxplot(mat)


# exercise D
par(mfrow = c(1,4))
boxplot(iris$Sepal.Length, col = "white")
boxplot(iris$Sepal.Length~iris$Species, 
        ylab = "Sepal.Length", xlab = "", col = "white")
boxplot(iris[, -5], col = "white")
boxplot(iris[, -5], horizontal = T,
        col = c("green", "red" ,"darkblue","yellow" ))

#
library(RgoogleMaps)
TaiwanMap <- GetMap(center=c(lat = 23.58, lon =120.58), zoom =10, destfile = "Taiwan1.png")
PlotOnStaticMap(TaiwanMap)
TaiwanMap1 <- GetMap(center=c(lat = 23.58, lon =120.58), zoom =7, destfile = "Taiwan2.png")
PlotOnStaticMap(TaiwanMap1)
















