clc
clear

x1 = input('Enter a guess for the root of f(x): ');
x2 = input('Enter another guess for the root of f(x): ');
% set defaults
n            = 5; 
es           =  5*10^(2-n);

% calcualte root and iterations
[root, iterations] = secantmethod(es,x1,x2,@equation);

% display results
fprintf('\nThe root of f(x) is %.3f\n', root)
fprintf('\nIt took %d iterations to converge \n\n', iterations)

% function eqation
function [g] = equation(x)
g = exp(0.5*x) + 4*x^3 - 5;
end
