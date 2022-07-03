# ?後打有疑問的程式碼，可喚出help功能
palette(rainbow(15))
barplot(rnorm(15,5,3),col = heat.colors(15)) #隨機做出長條圖 限定平均數為5 標準差為3 顏色15種
# 上一行也可打成barplot(rnorm(15,5,3),col = 1:15)
# rainbow彩虹 heat.colors紅至黃 terrain.colors綠、棕至白 
# topo.colors深藍至淺棕 cm淺藍到白到淺紫 gay或grey灰
file.choose() #選擇檔案
setwd("/home/R") #設定工作目錄
getwd() #目前工作目錄
detach("package:class") #取消載入套件
# control+L 清除控制欄
# control+1將光標移動到命令控制台處
# contol+Shift+C 對代碼進行註釋或去掉代碼註釋
# install.packages()