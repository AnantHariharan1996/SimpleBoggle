%% Generate and Plot a Boggle Board!
% All you need to do is tell the code is what the dimensions 
% of your Boggle Board should be. 
% Set up the 'dimension' variable to do this.

addpath(genpath(pwd))

clear; close all; clc
dimension=[5 5];
%%% Do you want to save this board?
save_board=1;
GameName=['Jan2_2025_2'];
DateString = datestr(datetime);

[Board,dimension,coords]= Generate_Board(dimension);
%%%

if save_board
    save
    movefile('matlab.mat',[GameName '_' DateString '.mat'])
    saveas(gcf,[GameName '_' DateString '.png'])
end