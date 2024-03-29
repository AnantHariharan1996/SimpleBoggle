# SimpleBoggle
Ever wanted to make sure you weren't missing any words when you painstakingly solved your Boggle board? This is a simple package that can generate and 'solve' a boggle board of any rectangular [n x m] dimensions. Solving typically takes under a minute- just enough time for you to leave this package running in the background while you tally you and your friends' scores up! It's always exciting to see how many additional words were lurking in the background.

All solutions are based on the 2019 Scrabble Dictionary- if you hate some of the words it spits out, blame the jokers at Scrabble who came up with this. 

Preparing to run:
**Before running, Make sure all folders in this package containing helper functions are in your MATLAB path. You can do this using:**

```Matlab
addpath(genpath(pwd))
```

There are 3 main routines, or modes of running this code. 

- If you just want to -generate- a boggle board. Just run Generate_Board_Example.m. 

- If you want to -generate- and also solve the boggle board, run Generate_And_Solve.m

- If you want to solve a Boggle board that you input by hand, run Input_And_Solve.m

The Solvers output a text file with all solutions, with the maximum number of points in the filename and output to the command line. 

Want to pause and come back to things later?
You can save the boggle board you generate if you wish and return by saving the three variables dimension,Board,and coords, which the functions need to run.

*Future Improvements*:

The algorithm I used is not the quickest, so I welcome any suggestions to promote speedup.
