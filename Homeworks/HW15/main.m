clc
clear
% set defaults
n            = 6; %X.XXXXX
xl           = 0;
xh           = 2;
es           =  5*10^(2-n);

guess = input("Enter initial guess for the mole fraction of H2O:");

% calcualte root and iterations
[root, iterations] = fixedpoint(es,guess,@equation);

% display results
fprintf("The calculated mole fraction of H2O is: %.5f\n",root);
fprintf("It took %d iterations to converge\n",iterations)

% function eqation
function [g] = equation(x)
% constants
k = 0.05;
p_t = 3;
%equation of math 
g =  (k * (1 - x)) / sqrt((2 * p_t) / (2 + x));
end
