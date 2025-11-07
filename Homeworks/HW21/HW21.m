clc
clear
close all

c = [0.5 0.8 1.5 2.5 4.0];  % x
k = [1.1 2.5 5.3 7.6 8.9];  % y

% transform c,k
c_lin = 1 ./ (c.^2);
k_lin = 1 ./ k;

% calculate a1,a0
[a_0,a_1] = linreg(c_lin,k_lin);

% calclate maxes
kmax = 1/a_0;
c_s = a_1/a_0;

% set x space
x = linspace(0,5,50);

% set the nonlinear function
k_nonlin  = (kmax .* (x.^2))./(c_s + x.^2);

% plot
scatter(c,k)
hold on
plot(x,k_nonlin)
xlabel("Oxygen Concentration (mg/L)")
ylabel("Growth Rate (per d)")
title("Growth Rate of Bacteria")
legend('Raw Data','Curve fit')

% print the results
fprintf("The calculated values for cs and kmax are: %.3f and %.3f respectively.\n",c_s,kmax)

% from slideshow
function [a0,a1] = linreg(x,y)
    % least squares regression for a straight line
    n = length(x);
    numerator = n*sum(x.*y)-sum(x)*sum(y);
    denom = n * sum(x .^2) - (sum(x))^2;
    a1 = numerator / denom;
    a0 = mean(y) - a1*mean(x);
end