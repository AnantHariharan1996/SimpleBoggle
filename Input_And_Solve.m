%% Input, Plot, and Solve a Boggle Board!
% All you need to do is tell the code is what the dimensions 
% of your Boggle Board should be, then type in the letters of your boggle
% board
% Set up the 'dimension' variable to do this, then enter letters
% at the command prompt. 

addpath(genpath(pwd))

clear; close all; clc

%%% Setup
dimension=[5 5];
GameName='Trial'
DateString = datestr(datetime);

%%%



%% Take in Input
[Board,dimension,coords]= Input_Board(dimension);

%% Solve
tic
[Solved_WordList] = Board_Solver(Board,dimension,coords)
toc
writecell(Solved_WordList',['Solutions_' GameName '_' DateString '.txt'])



%% Find large words
idx = find(PointList>4);
Solved_WordList{idx}

[NumPoints,PointList] = TallyUpPoints(Solved_WordList);
Str=['The maximum number of points possible is ' num2str(NumPoints) '!'];
disp(Str)

%close all