close all
clear all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% This is the blank template for Lab A, 2026           %%%%%%%%%%%%%%%%
%%                     Do not delete this text          %%%%%%%%%%%%%%%%
%%                     Do not delete this text          %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Task 1 

Fs =;
F0 = ;
d = ;

%Task 2

N = ;

%Task 3

t = ;

%Task 4

x = ;


%Task 5




%Task 6

x1 = ;
x2 = ;

%Task 7

%soundsc(x1,Fs);
%pause(2)
%soundsc(x2,Fs);
%pause(2)



%Task 8


%Task 9



%Task 10

%original audio load and listen
load handel.mat

filename = 'handel.wav';
audiowrite(filename,y,Fs);
clear y Fs

[y,Fs] = audioread('handel.wav');

%sound(y,Fs);
