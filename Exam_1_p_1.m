% James Torok
% Exam 1 problem 1
clc
clear
close all

% PART A set a,b 
A = 0:0.2:2;

B = 1 + sqrt(A);

% PART B Generate function W
W = ((7.*A.*B)./(2.*A+4)).^3;

% create plot of W vs A
plot(A,W)

% add titles and labels
title('W vs. A');
xlabel('A');
ylabel('W');

% PART C Print out the table
fprintf("%3s\t%7s\t%7s\n","A","B","W")
fprintf("----------------------\n")
fprintf('%4.1f\t%5.3f\t%5.3f\n',[A; B; W])
