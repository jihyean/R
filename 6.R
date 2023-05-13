library(rvest)
url <- "https://www.korea.kr/archive/speechList.do"
html <- read_html(url)
html

subject <- html_nodes(html, "#container div article div.article-content table tbody tr td.subject")
subject

result <- subject %>% html_text()
result