

###### Graph
### one single graph

iris
colnames(iris)
rownames(iris)
dimnames(iris)
plot(iris[, 1], xlab = "index", ylab = "Sepal.Length", main = "iris")  # scatter plot
plot(iris[,1 ], iris[,2 ], pch = 20)

#
for(i in 1:4){
  names = paste("iris", i, ".jpg", sep = "")
  print(names)
}

setwd("D://Chang-web/graph")
for(i in 1:4){
  names = paste("iris", i, ".jpg", sep = "_")
  jpeg(names) # file names
  plot(iris[, i]) # graphs
  dev.off() # output
}

# 

plot(iris[,1 ], iris[,2 ], pch = 20, 
     xlab = "Sepal.Length", ylab = "Sepal.Width", main = "IRIS",
     xaxt = "n" #清空x軸數字標記
     # bty = "n" 去除圖片邊框
     )
axis(1, at = 1:9, labels = letters[1:9], 
     tick = FALSE) # tick 去除刻度
# title("test")  和main的位置一樣
# text(6.7, 4, "word", cex = 0.7) 在圖內加上文字

# 
plot(iris[1:9 ,1 ], iris[1:9 ,2 ], pch = 20, 
     xlab = "Sepal.Length", ylab = "Sepal.Width", main = "IRIS",
     xaxt = "n", #清空標記
     xlim = c(0, 10))
axis(1, at = 1:9, labels = letters[1:9], tick = FALSE)
# set new index: col.axis = "blue" 


plot(iris[1:9 ,1 ], iris[1:9 ,2 ], pch = 20, 
     xlab = "Sepal.Length", ylab = "Sepal.Width", main = "IRIS",
     xaxt = "n", # 清空標記
     bty = "n" # 沒有外框
)

# add math symbol
plot(iris[1:9 ,1 ], iris[1:9 ,2 ], pch = 20, 
     xaxt = "n", # 清空標記
     bty = "n", # 沒有外框
     main = expression(y == sqrt(x))  # 在標題加上數學式
)

plot(iris[1:9 ,1 ], iris[1:9 ,2 ], pch = 20, 
     xaxt = "n", # 清空標記
     bty = "n", # 沒有外框
     main = expression(y == x^2)
)


# add text on graph
plot(iris[1:9 ,1 ], iris[1:9 ,2 ], pch = 20, 
     main = expression(y <= x^2),
     mtext('hi', side = 1, line = 2, at = 5, col = 'blue')
)

# add a legend
plot(iris[1:9 ,1 ], iris[1:9 ,2 ], pch = 20, 
     main = expression(y <= x^2),
     mtext('hi', side = 1, line = 2, at = 5, col = 'blue')
)
# legend("bottomright", legend = "observables", pch = 20, text.col = "red", horiz = T)
legend("bottomright", legend = "observables",
       pch = 20, text.col = "red", 
       horiz = T,
       inset=c(0,1), # 調整legend到不遮蔽資料點的位置
       xpd = TRUE) # Needed to put the legend outside the plot


# exercise A

x <- seq(0, 10, by = 0.01)
plot(x, dchisq(x,4), 
     ylab = "Chisquare Density", xlab = " ",
     type = "l",
     bty = "n",
     axes=FALSE, frame.plot=TRUE,
)
text(8, 0.1, expression(A == P(chi^2 >= x)))
axis(1, 15, "x", cex = 2)
Axis(side=2, labels=FALSE)

# segments(15, 0.02, 15, 0.10, col = "blue", lwd = 1)









