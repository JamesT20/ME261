clc
clear
% parameters for the bisection
sigfigs     = 4;
y_low       = 0.5;
y_up        = 2.5;
maxn        = 10;

% calculate es
es =  5*10^(2-sigfigs);

[root, iterations] = bisect(y_low,y_up,es,maxn,@equation);

fprintf("The root of f(x) is: %.4f\n",root);
fprintf("It took %d iterations to converge\n",iterations)


% function for the equation
function [result] = equation(y)
    % constatnats
    Q = 20;
    g = 9.81;
    %equation equation to calculate
    % find b,a
    B  = 3 + y;
    A  = 3*y + y^2/2;
    % calculate result 
    result = 1 - (Q^2 / (g*A^3)) * B;
end
