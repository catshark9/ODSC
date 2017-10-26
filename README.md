# ODSC
Scripts & Data Files for Ted Kwartler's ODSC West 2017 Text Mining Workshop

# Requirements
- Sign up for an API key at ['newsapi.org'](www.newsapi.org)
- Sign up for an API key at ['elasticemail.com'](www.elasticemail.com) 

# Package Installations
```
libs<-c('stringi', #1_Keyword_Scanning.R
        'tm', #2_Cleaning and Frequency Count.R
        'qdap', #3_Dendrogram.R
        'ggplot2', 
        'ggthemes',
        'dendextend',
        'wordcloud', #4_Simple_Wordcloud.R & #5_Other_Wordclouds.R
        'RColorBrewer',
        'treemap', #6_Topic_Modeling_Sentimentv3.R
        'portfolio',
        'GuardianR',
        'topicmodels',
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
