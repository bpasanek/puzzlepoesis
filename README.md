# puzzlepoesis
This is the main git for UVa's Puzzle Poetry group. A proper index web page can be visited here: 

This repository will eventually house code for solving poetry puzzles (pentominoes and other) and related puzzle-poem games. Currently this readme file narrowly addresses a project involving Shakespeare's "procreation" sonnets (Sonnets 1 to 17). 

### The Puzzle Solver: Overview
Pentomino puzzles can be solved computationally. Katherine Holcomb has adapted and uploaded C++ code that leverages 4 different puzzle solving algorithms (DLX, 2. MCH, EMCH, de Bruijn). Unpack the tarball polycube.tgz for code, modules, and makefiles.

Katherine includes the following instructions:
1. module load gcc/4.8.2  -- it *will not* link with the default 5.4.0 because boost was built with 4.8.2
2. module load boost (optional since I put full paths into the makefile, but will be required to run it to set LD_LIBRARY_PATH)
3. cd src
4. make

One of our first jobs is to rewrite this code to solve sonnet-shaped puzzles. 

In the case of sonnets, we have 14 x 10 grids (14 lines, 10 syllables per line). In one canonical pentomino puzzle, the 12 pentomino pieces are packed into a 6 x 10 grid. This puzzle has been solved computationally: there are 2339 ways to fit 12 pentominoes into a 6 x 10 grid. English majors will note that 6x10 is the shape of a sestet (the last six lines of a sonnet). It may then be ideal to pack the octave and sestet of our sonnets separately. Brad thinks below out loud about what packing will entail. For one thing, pieces will have to appear more than once (at least once in the sestet, then most or all will appear again in the octave). Again, it would be nice to use as many different shapes as will fit to pack the octave.

For reference, the pentominoes appear below labeled:

![12 Pentominoes](/images/pentominoes.jpg)
    
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
  
Again, we are treating poems as frames into which words are packed (as in a packing puzzle). But note, our solutions cannot divide words, which means there are constraints (represented below with question marks and hyphens) that the current modified pentomino solver has not yet been programmed to respect.
  
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

How to rewrite the C code? A good question! These positions in the grid should, Brad think, be filled first in the revised walk-back routine. That is, the first pentominoes should be placed over these squares in such a way that no piece covers only part of a poem position marked with a ?-?, ?-?-?, etc. Performance might be optimized if the partially packed puzzle is then checked for areas that won't fit a pentomino. Alternately, brute packing of shapes can continues until the solver fails and has to back up and start again.

Each of the 17 sonnets has a different set of constraints on pentomino placement and word-division. It may well be that there are sonnets that do not have solutions.

### Resources
Discussion of pentomino puzzle solving at
http://www.mattbusche.org/blog/article/polycube/

C++ code adapted from http://www.mattbusche.org/projects/polycube/


