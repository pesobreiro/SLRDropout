# Setup library
install.packages("bib2df")
install.packages('journalabbr')
library(bib2df)
library(journalabbr)
library(tibble)
library(dplyr)

setwd('C:/nuvem/Dropbox/doutoramento/tese/SLRDropout/sources/allSources')
dir()
# List the files ending with bib
files<-list.files(pattern = '\\.bib$',)
temp

acm<-read_bib2tib(file = files[1])
View(acm)
ieee<-read_bib2tib(file = files[2])
head(ieee)
science1<-read_bib2tib(file = files[3])
science1
science2<-read_bib2tib(file = files[4])
scopus<-read_bib2tib(file = files[5])
dim(scopus)
springer<-read_bib2tib(file = files[6])
wos<-read_bib2tib(file = files[7])
head(wos)
wos

filter(scopus,is.na(DOI))


combine <- tibble(append(acm,scopus))
combine

files
files[1]
temp
merge()


library(xlsx)
all_articles<-read.xlsx(file = 'all_articles.xls',sheetIndex = 1)
all_articles<-tibble(all_articles)
all_articles
barplot(factor(all_articles$source),names.arg = unique(all_articles$source))
unique(all_articles$source)
counts(all_articles$source)

# barplot with articles by source
tb<-table(all_articles$source)
bb<-barplot(height = tb,ylim = c(0,250),las=1)
text(x = bb,y = tb+10,labels = tb)

library(ggplot2)
ggplot(all_articles$source)+ aes(y=count)

factor(all_articles$source)

temp<-table(all_articles$source)
