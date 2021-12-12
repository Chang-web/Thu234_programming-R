

##### data processing

# import data
# not setting working directory
read.table("D://Chang-web/data/data.txt", 
                   header = T,sep = "\t" , na.strings = "NA", fill = T , row.names = 1)
# fill = F:如果資料列長度不同，R無法讀取

# if set the working directory
read.table("data.txt",  header = T,sep = "\t" , na.strings = "NA", fill = T , 
                   row.names = 1 # 最左邊的欄位是列的名稱
                   )
read.table("data.txt",  header = T,sep = "\t" , na.strings = "NA", fill = T , 
                   row.names = NULL # 加上觀測值編號
)

# scan as list
my_data <- scan(file = "iris-data1.txt", 
                what = list(a = integer(0), b = numeric(0), c = numeric(0), 
                            d = numeric(0), e = numeric(0),name = character(0)),
                skip = 1)
class(my_data)

# transform list to data.frame
new_data <- as.data.frame(my_data)
class(new_data)

table(new_data$name) # table(new_data[,6])
lapply(new_data, class)

# observe the data
summary(new_data)
str(new_data)
attributes(new_data)


# read xls
library(readxl)
read_excel("D://Chang-web/data/Excelecon/wage2.xls",col_names = F)

# data and time:strptime
res <- read.table("data.txt",  header = T,sep = "\t" , na.strings = "NA", fill = T , 
           row.names = 1 # 最左邊的欄位是列的名稱
)
res1 <- as.data.frame(res)
newdate <- strptime(res$Date, "%Y/%m/%d")
newdate[1] - newdate[2]
# error: res1[1,3] - res1[2,3]

###### exercise ###############################

# read csv files
exchange_rate <- read.csv("D://Chang-web/data/exchange_rate.csv", header = T, sep = ",", na.strings = NA,fill = T)
# fill = T代表變數裡有遺失值但沒註記
er <- as.data.frame(exchange_rate)

# 在修正成date格式前，date欄位是character，相減就是一般的減法
er[18,1] - er[19,1]  # 20160901 - 20160831 = 70
# 改成日期格式相減變成天數
erdate <- strptime(er$Data.Date, "%Y%m%d")
str(erdate) # POSIXlt
erdate[18] - erdate[19]  # 輸出的結果有字串，無法運算
# 強制更改格式為數字
time <- as.numeric(erdate[18] - erdate[19])
time   # 只有輸出天數


# Compute the average spot rate for selling
mean(er$Spot.1)

##### plot
# 作圖一: convert language of labels on x axis 
# x軸是中文
plot(er$Data.Date, er$Spot.1, 
     xlab = "date", ylab = "spotrate", main = "spot for selling",
     pch = 20, type = "b")

# 更改為英文語系
Sys.setlocale("LC_ALL","English")
# Sys.getlocale()

# 重新作圖
plot(er$Data.Date, er$Spot.1, 
     xlab = "date", ylab = "spotrate", main = "spot for selling",
     pch = 20, type = "b")

# 作圖二: add date to x axis
plot(er$Data.Date, er$Spot.1, 
     xlab = "date", xaxt = "n",ylab = "spotrate", main = "spot for selling",
     pch = 20, type = "b")
# 把年月填上出現錯誤 error: invalid 'trim' argument
axis(1, er$Data.Date, format(er$Data.Date, "%Y%m"), tick = F)
# solve: convert POSIXlt to date format then replace column
erdate <- as.data.frame(as.Date(erdate))
er[,1] <- erdate
# Date[1:140]
str(er[,1])

# 重新作圖
plot(er$Data.Date, er$Spot.1, 
     xlab = "date", xaxt = "n",ylab = "spotrate", main = "spot for selling",
     pch = 20, type = "b")
axis(1, er$Data.Date, format(er$Data.Date, "%Y%m"), tick = F)

# exercise B
# 篩選列並計算平均
# method1
er1 <- er[er$Spot.1 > 31,]
mean(er1$Spot.1)

# method2
temp = er$Spot.1 > 31
mean(er$Spot.1[temp])

# export data
write.table(InsectSprays, "insectsprays.txt", col.names = F, 
            append = T) # append:在原資料繼續添加

write.table(InsectSprays, "insectsprays.csv", col.names = T,row.names = TRUE)
# append = T:
write.table(er1, "er1.csv", append = FALSE)

# 
er2 <- er[er$Spot.1 > 31, c("Data.Date", "Cash", "Cash.1")]
colnames(er2) <- c("Date", "buying", "selling")
write.csv(er2, "er2.csv", row.names = F)


# recode: dummy
install.packages("car")
library(car)
head(er$Rate)
er$Rate <- recode(er$Rate, "'Buying' = 1")
head(er$Rate)


