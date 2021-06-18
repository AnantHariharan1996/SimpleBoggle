%% Boggle Runner
addpath(genpath(pwd))

clear; close all; clc
dimension=[5 5];

[Board,dimension,coords]= Generate_Board(dimension);
%%%
info=importdata('CollinsScrabbleWords.txt');
Uppercaseinfo = upper( info );
word = Uppercaseinfo{1};