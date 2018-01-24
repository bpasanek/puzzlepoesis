# Sonnet Solving, Just the Sestets

#Import 2,339 solutions from https://isomerdesign.com/Pentomino/6x10/solutions.txt
library("stringr")
setwd("~/projects/puzzlepoesis/r-puzzlings/")
solutions<-scan("solutions-2339-6x10.txt",what="char",sep="\n")
solutions<-gsub(" *[0-9]+, ","",solutions)
length(solutions) #2339 solutions

# These look like this:
solutions[1] #"FFIIIIILZZ VFFYLLLLZN VFYYYYXZZN VVVTWXXXNN PPPTWWXUNU PPTTTWWUUU"

# As a 6x10 grid:
# FFIIIIILZZ 
# VFFYLLLLZN 
# VFYYYYXZZN 
# VVVTWXXXNN 
# PPPTWWXUNU 
# PPTTTWWUUU"

# In my most abstract representation, this will look like this:
# •-• •-•-•-•-• • •-• 
# • •-• • •-•-•-• • • 
# • • •-•-•-• • •-• • 
# •-•-• • • •-•-• •-• 
# •-•-• • •-• • • • • 
# •-• •-•-• •-• •-•-•

# # Work out parsing
# test<-solutions[1]
# grep("([A-Z])\\1{2,5}",test,value=T) # gets positions of a puzzle piece that can't be broken.
# posits<-str_locate_all(test,"([A-Z])\\1{2,5}") #returns a list! Matrix in elements
# posits[[1]][1,] # how to use this to index posits?

# Try a loop instead
# This is going to be a loop, going character by character. 
# Surely there's a better way...?

# Initialize a list to store the solutions
solutions.l<-list()

# I am going to convert solutions that name the puzzle pieces to something more abstract:
# •s for syllables, -s for marking syllables in a word. For puzzle solving, the main
# rule is that you can't divide a word. Thus a '-' means don't divide, a piece has to go here.

# Loop over solutions, inserting hypens and replacing letters with •s
for(j in 1:2339){
  newstring<-NULL
  process<-unlist(str_split(solutions[j],""))
  for(i in 1:length(process)){
    if(i<length(process)){
      char1<-process[i]
      char2<-process[i+1]}
    if(char1==char2){
      char1<-paste0(char1,"-")
      newstring<-c(newstring,char1)
    }else{
      newstring<-c(newstring,process[i])
    }
  }
  solution<-str_c(newstring,collapse="")
  solution<-str_replace_all(solution,"[A-Z]","•")
  solutions.l[[paste0("solut",j)]]<-solution
}

# Print these out somewhere?
# it might be nice to put the spaces in between syllables that aren't word consituents. Then I get neater grids.
for(i in 1:10){
  print(solutions.l[[i]])
}

# Bring in ENGL3810 sonnets in same form
son3810<-scan("sonnets-3810.txt",what="char",sep="\n")
str(son3810)
solutions.l[[500]]

# Match
lapply(solutions.l,'[',son3810[1])
test<-"•-••-•-•-•-•••-• ••-•••-•-•-••• •••-•-•-•••-•• •-•-••••-•-••-• •-•-•••-••••• •-••-•-••-••-•-•"
test %in% solutions.l # TRUE
which(test %in% solutions.l) # first solution

son3810[1] %in% solutions.l # FALSE
son3810[2] %in% solutions.l # FALSE
son3810[3] %in% solutions.l # FALSE
son3810[4] %in% solutions.l # FALSE
# Huh, no matches in the solutions!

# Bring in all 17 sonnet sestets
sestson17<-scan("procsonnets1to17-clean.txt",what="char",sep="\n")
sestson17[1]==son3810[1]

sestson17 %in% solutions.l

# No, I am doing this wrong ... THINK HARDER:
# Yes, in fact, the problem is harder than that.

# I've got underdetermined sestets, like this, from  sonnet 1:
# 
# • • • • • • • •-•-•
# • •-• •-• • • •-• •
# •-• • • • •-• • •-•
# • •-• • • • • •-•-•
# •-• • • • • • •-• •
# • • • • • • • • • •
# 
# My solutions have more hyphens in them:
# 
# •-•-•-•-• • •-• •-•
# •-• • •-•-• • • •-•
# • • •-•-• • • •-• •
# • •-• • • •-• • •-•
# • • •-• • • •-•-• •
# •-•-•-• •-•-• • •-•

# need to compare each string/line/sestet. A solution that fits is one in which all the hyphens in the first sestet can
# find a corresponding hyphen in the second. There will be "extra" hyphens in the second sestets. The second will be drawn 
# from 2,339 possible solutions of the 6x10 sestet.
# shape. Try matching one at a time...
# ASK CLAY FOR ANY TIPS?

son3810[1]
# How do I best represent this for checking: '-' after syllable 8 and after syllable 9? Like so:
# ••••••••-•-•
# This matches
# •-••-•-•-•-••-•-• from solutions.l[[5]] (first line and first line)

# Clay wrote a function called genPos (generateposition), which tells you where all the hyphens

# which, any, all -- use all to generate Ts for each line, only return "solution" if all true
which(c(T,T,T))

# Checking for matches this way?
test.l<-list(c(T,T,T),T)
all(test.l[[1]])
all(unlist(lapply(test.l,all)))

#Follow up with Clay Ford's script: sestetsolving-match_CF.R
#He found:
#6 had solution 68
#12 had solution 657
#15 had solution 775
