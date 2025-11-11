clc
clear
close all
x =  [0 1 2 3 4 5 6 7 8 9]';
y = [9.45 4.35 3.65 4.20 4.55 6.10 6.90 9.25 11.40 14.26]';
n = length(x);
Z = [ones(n,1) x x.^2];

A = Z'*Z;
b = Z'*y;
c = A\b; % same as a = inv(A)*b
xx = linspace(0, 9, 50);
yy = c(1) + c(2)./(xx + 1).^(2) + c(3)*xx.^2;
for i=c
    i
end
plot(x,y,'o',xx,yy)
