# 利用quantmod包抓取股票數據
# 抓取蘋果公司每日的股票資訊
install.packages("quantmod")
library(quantmod)
getSymbols('AAPL', src='yahoo')
tail(AAPL)
# 主繪圖函數
chartSeries(AAPL, theme = 'white')
# 三個基本圖形
barChart(AAPL, theme = "white") # 條狀圖
candleChart(AAPL, theme = "white") # 蠟燭圖
lineChart(AAPL, theme = "white")# 折線圖
# 技術分析圖
chartSeries(AAPL, theme = 'white')
require(TTR)
addADX() # 平均指向指標ADX
addATR() # 平均真實波幅指標ART
addBBands() # 布林線指標BBands
addCCI() # 順勢指標CCI
addEMA() # 指數平均指標EMA
