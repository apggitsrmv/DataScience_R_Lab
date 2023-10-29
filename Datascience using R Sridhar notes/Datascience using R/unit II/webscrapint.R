# Parsing of HTML/XML files  
library(xml2)
library(rvest)    

# String manipulation
library(stringr)   

# Verbose regular expressions
library(rebus)     

# Eases DateTime manipulation
library(lubridate)

#Specifying the url for desired website to be scrapped
url <- "https://www.amazon.in/OnePlus-Mirror-Black-64GB-Memory/dp/B0756Z43QS?tag=googinhydr18418-21&tag=googinkenshoo-21&ascsubtag=aee9a916-6acd-4409-92ca-3bdbeb549f80"
#Reading the html content from Amazon

webpage <- read_html(url)

#scrape title of the product> 
title_html <- html_nodes(webpage, "h1#title")
print(title_html)
title <- html_text(title_html)
print(title)
head(title)

# remove all space and new lines
str_replace_all(title,"\n","")

#scrape the price of the product>
price_html <- html_nodes(webpage, ‘span#priceblock_ourprice’)
price <- html_text(price_html)

#x <- c("1 house", "2 cars", "3 people")
#str_replace_all(x, c(`1` = "one", `2` = "two", `3` = "three"))

