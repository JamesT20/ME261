clc
clear
% set defaults
sigfigs      = 6; %X.XXXXX
xl           = 0;
xh           = 2;
es =  5*10^(2-sigfigs);

% calcualte root and iterations
[root, iterations] = falsepos(xl,xh,es,@equation);

% display results
fprintf("The root of equation is: %.5f\n",root);
fprintf("It took %d iterations to converge\n",iterations)

% function eqation
function [y] = equation(x)
%equation of math 
y = exp(0.5*x) - 5 + 4*x^3;
end

