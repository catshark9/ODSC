#' Title: Get Text : XML example
#' Purpose: Grab some text from an XML file for instruction
#' Author: Ted Kwartler
#' email: ehk116@gmail.com
#' License: GPL>=3
#' Date: 2018-4-24
#' 

# Libs
library(xml2)
library(stringr)

# In Chrome, press f12 to open the developer tab. 
# Reload the page with closed caption turned on.
# In the dev tab search box type "timed" to get the caption info
# Right-click and open in a new tab to view XML captions.
# https://www.youtube.com/watch?v=34Na4j8AVgA
url<-'https://www.youtube.com/api/timedtext?hl=en_US&caps&expire=1524688666&key=yttt1&signature=61C4AD107FCD8ECC5A43F36C39C055646E3DE65B.370C01BB7B737E1CFD861863C806BA992CB9ED45&sparams=caps%2Cv%2Cexpire&v=34Na4j8AVgA&lang=en&fmt=srv3'

# Read in the closed caption info
x<-read_xml(url)

# Extract text, remove carriage returns, remove special characters
text<-xml_text(x)
text<-str_replace_all(text, "[\r\n]" , "")
text<-iconv(text, "latin1", "ASCII", sub="")

# Save
writeLines(text,'~/ODSC/workshop_data/Weeknd.txt')

# End
