# Script for Puzzle Poesis
# Project # 1: Increase

# setup environment
library('stringr')
library("dplyr")
setwd("~/projects/hack/sonnets")

# Scan in Sonnets 
sonnets<-scan("procsonnets.txt",what="char",sep="\n")
titleposition<-grep("^[0-9]+",sonnets)
sonnets<-c(sonnets,"END") #insert an END line for looping
titleposition<-c(titleposition,256)
sonnetlines.l<-list() #all the lines in every sonnet in a handy list

for(i in 1:17){
  sonnetname<-paste0("sonnet",i)
  start<-titleposition[i]+1
  end<-titleposition[i+1]-1
  sonnetlines<-sonnets[start:end]
  sonnetlines.l[[sonnetname]]<-sonnetlines
}

gsub("ø","",sonnetlines.l[[15]])

length(sonnetlines.l)
sonnetlines.l[[1]][1]

# for(i in 1:17){
#   words<-unlist(str_split(sonnetlines.l[[i]][j],boundary("word")))
#   words<-words[which(words!="")]
#   countline<-length(words)
#   if(countline!=10){print(words)}
#   #linerepresentation<-(numwords,countline)
#   #sonnetgrids.l[[i]]<-numwords
# }

syllabs<-list()
lines<-list()
syllabssonnet.l<-list()
for(i in 1:17){
  lines<-NULL
  sonnet<-names(sonnetlines.l[i])
  print(sonnet)
  for(j in 1:14){
    line<-unlist(str_split(sonnetlines.l[[i]][j],boundary("word")))
    syllabsperline<-unlist(lapply(line,str_count,"ø"))
    print(syllabsperline+1)
    lines[[j]]<-syllabsperline+1
    }
  syllabssonnet.l[[i]]<-lines
}


#######################################################

#Check for lines with more than 10 syllables --will need to decide if elision fixes, and think
# about where to crowd in words. See sonnets 3,8,9,10,11,15,17

#SONNET 3
which(sapply(syllabssonnet.l[[3]],sum)!=10) # 2 4
sonnetlines.l[[3]][2]
# "Now is the time that face should form another," 
sonnetlines.l[[3]][4]
# "Thou dost beguile the world, unbless some mother."

# SONNET 8
which(sapply(syllabssonnet.l[[8]],sum)!=10) # 1 3 9
sonnetlines.l[[8]][1]
# "Music to hear, why hear'st thou music sadly?"
sonnetlines.l[[8]][3]
# "Why lov'st thou that which thou receiv'st not gladly,"
sonnetlines.l[[8]][9]
"Mark how one string, sweet husband to another,"

# SONNET 9
which(sapply(syllabssonnet.l[[9]],sum)!=10) # 10 12
sonnetlines.l[[9]][10]
# "Shifts but his place, for still the world enjoys it;"
sonnetlines.l[[9]][12]
# "And, kept unused, the user so destroys it."

# SONNET 10
which(sapply(syllabssonnet.l[[10]],sum)!=10) # 3
sonnetlines.l[[10]][3]
"Grant, if thou wilt, thou art beloved of many,"

#SONNET 11
which(sapply(syllabssonnet.l[[11]],sum)!=10) # 2 4 10 12
sonnetlines.l[[11]][2]
"In one of thine, from that which thou departest;"
sonnetlines.l[[11]][4]
"Thou mayst call thine when thou from youth convertest."
sonnetlines.l[[11]][10]
"Harsh, featureless, and rude, barrenly perish;"
sonnetlines.l[[11]][12]
"Which bounteous gift thou shouldst in bounty cherish."

#SONNET 15
which(sapply(syllabssonnet.l[[15]],sum)!=10) # 2 4
sonnetlines.l[[15]][2]
# "Holds in perfection but a little moment,"
sonnetlines.l[[15]][4]
# "Whereon the stars in secret influence comment;"

#SONNET 17
which(sapply(syllabssonnet.l[[17]],sum)!=10) # 3 6 8
sonnetlines.l[[17]][3]
# "Though yet, heaven knows, it is but as a tomb"
sonnetlines.l[[17]][6]
"And in fresh numbers number all your graces,"
sonnetlines.l[[17]][8]
"Such heavenly touches ne'er touched earthly faces." #12 syllabs!

# Troublesome Sonnets  3, 8,9,10,11,15,17
#######################################################

# Put syllabssonnet.l into a dataframe. The following is a script created by Clay Ford (July 26, 2017).
# Original file saved in ~/projects/puzzlepoesis

# There is also a base R version which uses loops inside of loops.

# make a list similar to list on 
# https://github.com/bpasanek/puzzlepoesis/blob/master/sonnetsyllab-rlist
lst <- replicate(n = 17, 
                 lapply(1:14, function(x)rbinom(n = sample(6:10, size = 1), 
                                                size = 3, 
                                                prob = 0.7)), 
                 simplify = F)

length(lst)  # 17 - number of sonnets 
length(lst[[1]])  # 14 - number of lines in each sonnet assume to be same

# function to create data frame ASSUMING YOU WILL ALWAYS HAVE A LIST AS ABOVE;
# ie, a list of sonnets, each a list with 14 lines.
# 14 x 10 grid (14 lines by 10 syllables); 
# syllables can be modified, but set to 10 by default
# number of sonnets and number of lines determined from list
createDF <- function(x, syllables = 10){
  l1 <- length(x) # number of sonnets
  l2 <- length(x[[1]]) # number of lines 
  for(i in seq(l1)){
    for(j in seq(l2)){
      length(x[[i]][[j]]) <- syllables
    }
  }
  tidy_df <- purrr::flatten(x) %>% do.call(rbind, .) %>% as.data.frame()
  names(tidy_df) <- paste0("term",seq(syllables))
  tidy_df <- dplyr::bind_cols(expand.grid(line = seq(l2), 
                                          sonnet = paste0("sonnet",seq(l1))),
                              tidy_df)
  dplyr::select(tidy_df, sonnet, line, everything())
}

# create data frame
sonnets_DF <- createDF(lst)

# Example with 24 sonnets
lst2 <- replicate(n = 24, 
                  lapply(1:14, function(x)rbinom(n = sample(6:10, size = 1), 
                                                 size = 3, 
                                                 prob = 0.7)), 
                  simplify = F)

# create data frame
sonnets_DF2 <- createDF(lst2)

# using my list 

procsonnets.df <- createDF(syllabssonnet.l)

#######################################################

# COUNT WORDSPERLINE: length(is.na(procsonnets.df[1,3:12])) 
procsonnets.df$syllabsperline<-rowSums(procsonnets.df[,3:12],na.rm=T)

View(procsonnets.df)

#subset -- sonnets 1, 3, 12, 15
neal.df<-subset(procsonnets.df, sonnet==c("sonnet1","sonnet3","sonnet12","sonnet15"))
View(neal.df) #that doesn't work! See below.

# Did this the wimpy way and did more wimpy grepping in TextWrangler. Better to do it all in R with applies? 
# MODEL: write.table(x,"filename.txt",sep="\t",row.names=FALSE)

write.table(procsonnets.df[which(procsonnets.df$sonnet=="sonnet1"),3:12],"sonnet1-neal.txt",sep="\t",row.names=FALSE,col.names=FALSE)
write.table(procsonnets.df[which(procsonnets.df$sonnet=="sonnet3"),3:12],"sonnet3-neal.txt",sep="\t",row.names=FALSE,col.names=FALSE)
write.table(procsonnets.df[which(procsonnets.df$sonnet=="sonnet12"),3:12],"sonnet12-neal.txt",sep="\t",row.names=FALSE,col.names=FALSE)
write.table(procsonnets.df[which(procsonnets.df$sonnet=="sonnet15"),3:12],"sonnet15-neal.txt",sep="\t",row.names=FALSE,col.names=FALSE)

# Again, this time the first 17 -- Again, grepped in Textwrangler
# cleaned file called: procsonnets1to17-clean.txt
setwd("~/projects/puzzlepoesis/r-puzzlings")
write.table(procsonnets.df[which(procsonnets.df$line>=9),c(1,3:12)],"procsonnets1to17.txt",sep="\t",row.names=FALSE,col.names=FALSE)

