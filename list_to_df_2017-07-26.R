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