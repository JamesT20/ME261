clc
clear

x1 = input('Enter a guess for the root of f(x): ');
x2 = input('Enter another guess for the root of f(x): ');
% set defaults
n            = 5; 
es           = 5*10^(2-n);

% calcualte root and iterations
[root, iterations] = sec_method(es,x1,x2,@equation);
rootfz             = fzero(@equation,x1);

% display results
fprintf('The root of f(x) by secant method is %.5f\n', root)
fprintf('The root of f(x) by fzero method is %.5f\n', rootfz)
fprintf('It took %d iterations to converge by secant method\n\n', iterations)

% function eqation
function [g] = equation(x)
g = exp(0.5*x) + 4*x^3 - 5;
end
