

### R graph(2)
plot(iris[, 3], iris[, 4], pch = 16,
     col = ifelse(iris[, 1] > median(iris[, 1]), "red", "blue"))
legend("bottomright", legend = paste("Group", 1:2), 
       pch = 19, bty = "n")

# exercise A
# default colors in r:palette()
x <- seq(-pi, pi, by = 0.07)
plot(x, cos(x), xlim = c(-pi,pi), ylim =  c(-1, 1.64), 
     ylab = " ", pch = 3, col = 4)
lines(x, sin(x), type = "l",lty = 2,  col = 3)
lines(x, tan(x), type = "b",pch = 4, col = 6)
legend(-1, 1.72, c("cos", "sin", "tan"), col = c(4, 3, 6),
       text.col = "green4", lty = c(2, 0, 1), pch = c(NA, 3, 4),
       merge = TRUE, # merge points and lines
       bg = "gray90")


# exercise B
x <- seq(0,1,by = 0.01)
plot(x, 1-x^2, xlim = c(0, 1.3), ylim = c(0, 1.3), ylab = "", 
     type = "l", main = "upper sum", bty = "n", 
     xaxt = "n", yaxt = "n")
u <- par("usr") 
arrows(u[1], u[3], u[2], u[3], code = 2, xpd = TRUE, length = 0.08) 
arrows(u[1], u[3], u[1], u[4], code = 2, xpd = TRUE, length = 0.08)

#同時畫四條水平線
x1_grid <- c(0, 1/4, 1/2, 3/4)  # 線段起點x座標
y1_grid <- c(1, 15/16, 3/4, 7/16)# 線段起點y座標

x2_grid <- c(1/4, 1/2, 3/4, 1) # 線段終點x座標
y2_grid <- c(1,15/16,3/4, 7/16) # 線段終點y座標

segments(x1_grid, y1_grid, x2_grid, y2_grid, lwd = 2, col = 6)

# 同時畫四條垂直線
vx1_grid <- c(1/4, 1/2, 3/4, 1)  # 線段起點x座標
vy1_grid <- c(1,15/16,3/4, 7/16)# 線段起點y座標

vx2_grid <- c(1/4, 1/2, 3/4, 1) # 線段終點x座標
vy2_grid <- 0 # 線段終點y座標

segments(vx1_grid, vy1_grid, vx2_grid, vy2_grid, lwd = 2, col = 6)


##### polygon
x_grid <- 1:9
y_grid <- sample(2:5, length(x_grid), replace = T)
plot(c(1, 9), c(min(y_grid), max(y_grid)), 
     type = "n") # 空的畫面

polygon(x_grid, y_grid)

#
plot(c(1, 6), 1:2, type = "n")
polygon( 1:6, c(2,1,NA, 2,1,2), 
         density = c(40, 20), angle = c(-45, 45), bolder = NA)

plot(c(1, 6), 1:2, type = "n")
polygon( 1:6, c(2,1,0.5, 2,1,2), 
         density = c(10, 20), angle = c(5, 45), bolder = NA)

# other
plot(c(1, 9), 1:2, type = "n")
polygon(1:9, c(2,1,2,1,1,2,1,2,1),
        col = c("red", "blue"),
        border = c("green", "yellow"),
        lwd = 3, lty = c("dashed", "solid"))

polygon(1:9, c(2,1,2,1,NA,2,1,2,1),
        col = c("red", "blue"),
        border = c("green", "yellow"),
        lwd = 3, lty = c("dashed", "solid"))

# 附上座標:text
text(x1_grid, y1_grid,cex = 0.88, pos = 2, col = "darkgreen")




