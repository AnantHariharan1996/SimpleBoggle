%% Generate, Plot, and Solve a Boggle Board!
% All you need to do is tell the code is what the dimensions 
% of your Boggle Board should be. 
% Set up the 'dimension' variable to do this.

addpath(genpath(pwd))

clear; close all; clc

%%% Setup
dimension=[5 5];
GameName='Trial'
DateString = datestr(datetime);

%%%



%% Generate
[Board,dimension,coords]= Generate_Board(dimension);

%% Solve
tic
[Solved_WordList] = Board_Solver(Board,dimension,coords)
toc
writecell(Solved_WordList',['Solutions_' GameName '_' DateString '.txt'])


%% Tally up points
[NumPoints,PointList] = TallyUpPoints(Solved_WordList);
Str=['The maximum number of points possible is ' num2str(NumPoints) '!'];
disp(Str)


%% Find large words
idx = find(PointList>4);
Solved_WordList{idx}
close all