# puzzlepoesis
This is the main git for UVa's Puzzle Poetry group. This repository will house code for solving poetry puzzles (pentominoes and other).

### The Puzzle Solver: Overview
Katherine Holcomb has adapted and uploaded C++ code that leverages 4 different puzzle solving algorithms (DLX, 2. MCH, EMCH, de Bruijn). Unpack the tarball polycube.tgz for code, modules, and makefiles.

Katherine includes the following instructions:
1. module load gcc/4.8.2  -- it *will not* link with the default 5.4.0 because boost was built with 4.8.2
2. module load boost (optional since I put full paths into the makefile, but will be required to run it to set LD_LIBRARY_PATH)
3. cd src
4. make
    
### Create New Puzzles
To create a new puzzle...

An empty sonnet (14 x 10 grid):

     L:stationary=*
        . . . . . . . . . .
        . . . . . . . . . .
        . . . . . . . . . .
        . . . . . . . . . .
        . . . . . . . . . .
        . . . . . . . . . .
        . . . . . . . . . .
        . . . . . . . . . .
        . . . . . . . . . .
        . . . . . . . . . .
        . . . . . . . . . .
        . . . . . . . . . .
        . . . . . . . . . .
        . . . . . . . . . .
        ~L
  
  But note, our solutions should not divide words, which means there are constraints (represented below with question marks and hyphens).
  
  Sonnet 2:
  
       L:stationary=*
        . ?-? ?-? . ?-? . .
        . . . ?-? . . ?-? .
        . . . ?-?-? . . . .
        . . . ?-? . . . . .
        . ?-? . . . . ?-? .
        . . . ?-? . . ?-? .
        . . ?-? . . . ?-? .
        . . . ?-? . . ?-? .
        . . . . ?-? . ?-? .
        . . . ?-? . . . . .
        . . . . . . . . ?-?
        ?-? . ?-? . ?-?-? .
        . . . . . . . . . .
        . . . . . . . . . .
        ~L
  
 Sonnet 2:
 
 [1] "When forty winters shall besiege thy brow"          
 [2] "And dig deep trenches in thy beauty's field,"       
 [3] "Thy youth's proud livery, so gazed on now,"         
 [4] "Will be a tattered weed of small worth held."       
 [5] "Then being asked where all thy beauty lies,"        
 [6] "Where all the treasure of thy lusty days,"          
 [7] "To say within thine own deep-sunken eyes"           
 [8] "Were an all-eating shame and thriftless praise."    
 [9] "How much more praise deserved thy beauty's use"     
[10] "If thou couldst answer \"This fair child of mine"   
[11] "Shall sum my count and make my old excuse,\""       
[12] "Proving his beauty by succession thine."            
[13] "  This were to be new made when thou art old"       
[14] "  And see thy blood warm when thou feel'st it cold."

### Resources
Discussion of pentomino puzzle solving at
http://www.mattbusche.org/blog/article/polycube/

C++ code adapted from http://www.mattbusche.org/projects/polycube/


