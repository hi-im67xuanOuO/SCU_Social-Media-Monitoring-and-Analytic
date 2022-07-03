install.packages("RCurl")
install.packages("XML")
library(XML)
library(RCurl)

##鉅亨網, 可以看到該 div 的 class，class 的元素就是我們想要抓取的元素的名字，
url <- "https://news.cnyes.com/news/cat/headline" 
html <- htmlParse(getURL(url, .encoding = "utf8"), encoding = "utf8")
xpathApply(html, "//div[@class='_1xc']/h3", xmlValue)

##bloomberg
url <- "https://www.bloomberg.com/markets"
html <- htmlParse(getURL(url, .encoding = "utf-8"), encoding = "utf-8")
xpathSApply(html, "//h1[@class='top-news-v3-story-headline']", xmlValue)

install.packages("rvest")
library(rvest)
html.data <- read_html("https://www.bloomberg.com/markets")
html.path <- html_nodes(page.source, ".story-package-module_story_headline")
text.data <- html_text(html.path)
# 將 text.data 整理過後就是我們想要的新聞標題。
gsub('\n            ', '', text.data)

