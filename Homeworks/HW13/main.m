
% parameters for the bisection
es      = 5;
y_low   = 0.5;
y_up  = 2.5;
maxn    = 10;

[root, iterations] = bisect(y_low,y_up,es,maxn,@equation2)

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

function [result] = equation2(y)
    result = y^2 + 4;
    fprintf("%",y)
    fprintf("TRYING %.f3, got %.f3!\n",y,result);
    end