clc
clear
% get user sin value
sin_value  = input("Enter the value of x to compute sin(x): ");

% set this as the first solution
current_solution = sin_value;
% number of sig figs to solve out to
n = 6;

% stopping criteria es
threshold_percent = 0.5*10^(2-n);

% initialize crrent percent error to 100%
current_percent = 1;

% used for the exponent/denominator of mclaurin series
mo = 3;

% leading coefficent (-1 or 1, flips)
lc = -1;

iterations = 0;

while current_percent > threshold_percent
    new_solution = current_solution + lc*(sin_value^mo)/factorial(mo);
    current_percent = abs((new_solution - current_solution)/new_solution);
    lc = lc*-1;
    mo = mo +2;
    current_solution = new_solution;
    iterations = iterations + 1;
end 
new_solution
iterations