install.packages("rvest")
library(rvest)
wiki_url <- "https://en.wikipedia.org/wiki/Comma-separated_values"
html <- read_html(wiki_url)

example <- html_element(html, css="#mw-content-text > div.mw-content-ltr.mw-parser-output > table.wikitable")
df <- html_table(example)
df

write.table(df, file="exported.csv", sep=",")
