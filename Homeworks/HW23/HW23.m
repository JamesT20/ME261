clc
clear
close all
x =  [0 1 2 3 4 5 6 7 8 9]';
y = [9.45 4.35 3.65 4.20 4.55 6.10 6.90 9.25 11.40 14.26]';
% calculate n from matrix
n = length(x);

% calculate all Z values
Z = [ones(n,1), 1./(x+1).^2, x.^2];

% calculate c values
A = Z'*Z;
b = Z'*y;
c = A\b; % same as a = inv(A)*b

% generate the fit equation
xx = linspace(0, 9, 50);
yy = c(1) + c(2)./(xx + 1).^(2) + c(3)*xx.^2;

% print coefficents
fprintf("The calculated coefficients using Least Squares are:\n")
for i=[1:length(c)]
    fprintf("\tc%.d = %.3f\n",i,c(i))
end

% plot funtion
plot(x,y,'o',xx,yy)
