# ODSC 
Scripts & Data Files for Ted Kwartler's ODSC West 2017 Text Mining Workshop
* Check out my book [*here*](http://amazon.com/Text-Mining-Practice-Ted-Kwartler/dp/1119282012)
* Check out text mining courses at [*DataCamp*](http://datacamp.com)
* Some of my blog posts can be found at [ODSC](https://opendatascience.com/category/blog/), [DataCamp](http://www.datacamp.com/community/blog) or my site [TedKwartler.com](http://tedkwartler.com)

# Workshop Requirements
- Sign up for an API key at [newsapi.org](http://newsapi.org)
- Sign up for an API key at [elasticemail.com](http://elasticemail.com) 

# Package Installations
*WARNING: This will take a lot of time to install!!*
**It can take more than an hr to install, if some of the installs fail you will likely need to investigate each individual package installation for issues (e.g. rJava is needed for qdap)**
```
libs<-c('stringi', #1_Keyword_Scanning.R
        'tm', #2_Cleaning and Frequency Count.R
        'qdap', #3_Dendrogram.R
        'ggplot2', 
        'ggthemes',
        'dendextend',
        'wordcloud', #4_Simple_Wordcloud.R & #5_Other_Wordclouds.R
        'RColorBrewer',
        'treemap', #6_Topic_Modeling_Sentiment.R
        'portfolio',
        'GuardianR',
        'lda', #previous ODSC workshops used library(topicmodels)
        'LDAvis',
        'dplyr',
        'SnowballC',
        'openNLP', #7_Open_Langugage_Processingv3.R
        'jsonlite', #instruction_newsAPI.R
        'pbapply',
        'wordcloud2', #instruction_htmlWidgets.R
        'rbokeh',
        'radarchart',
        'stringr',
        'flexdashboard', #blank_dashboard.Rmd
        'rmarkdown', #cronJob.R
        'httr')

# Get most of the libs
install.packages(libs, 
                 repos = "http://cran.r-project.org", 
                 dependencies = c("Depends", "Imports", "Suggests"))

# WINDOWS Scheduler
install.packages('taskscheduleR')

# LINUX Scheduler
install.packages('cronR')

# Get a NLP Model for use w/openNLP
install.packages('openNLPmodels.en', 
                 repos = "http://datacube.wu.ac.at/", 
                 type = "source")
```      
