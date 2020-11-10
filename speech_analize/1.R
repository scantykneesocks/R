install.packages("KoNLP")
library(KoNLP)
install.packages("RColorBrewer")
library(RColorBrewer)
install.packages("wordcloud")
library(wordcloud)

pal2 <- brewer.pal(8, "Dark2")

text <- readLines(file.choose())
text

noun <- sapply(text, extractNoun, USE.NAMES=F)
noun

noun2 <- unlist(noun)
noun2

word_count <- table(noun2)
word_count

head(sort(word_count, decreasing=TRUE), 10)

noun2 <- gsub("and", "", noun2)
noun2 <- gsub("of", "", noun2)
noun2 <- gsub("to", "", noun2)
noun2 <- gsub("their", "", noun2)
noun2 <- gsub("the", "", noun2)on
noun2 <- gsub("for", "", noun2)
noun2 <- gsub("by", "", noun2)
noun2 <- gsub("He", "", noun2)
noun2 <- gsub("has", "", noun2)
noun2 <- gsub("in", "", noun2)
noun2 <- gsub("an", "", noun2)
noun2 <- gsub("or", "", noun2)
noun2 <- gsub("be", "", noun2)
noun2 <- gsub("with", "", noun2)
noun2 <- gsub("on", "", noun2)
noun2 <- gsub("a", "", noun2)
noun2 <- gsub("his", "", noun2)


word_count <-table(noun2)
wordcloud(names(word_count), freq=word_count, scale=c(20,1.2), min.freq=3, random.order=F, rot.per=.1, colors=pal2)

