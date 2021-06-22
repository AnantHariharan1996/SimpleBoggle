# SimpleBoggle
This is a simple package that can generate and 'solve' a boggle board of any dimensions. Solving takes under a minute- just enough time for you to leave this package running in the background while you tally you and your friends' scores up! All solutions are based on the 2019 Scrabble Dictionary- if you hate some of the words it spits out, blame the jokers at Scrabble who came up with this. 

Preparing to run:
**Before running, Make sure all folders in this package containing helper functions are in your MATLAB path**

There are 3 main routines, or modes of running this code. 

(1) If you just want to -generate- a boggle board. Just run Generate_Board_Example.m. 

(2) If you want to -generate- and also solve the boggle board, run Generate_And_Solve.m

(3) If you want to solve a Boggle board that you input by hand, run Input_And_Solve.m

The Solvers output a text file with all solutions, with the maximum number of points in the filename and output to the command line. 

*Future Improvements*:

A massive issue with this version is that this code will not work if your board has a 'Qu' tile. 
This will be fixed in a future release.
