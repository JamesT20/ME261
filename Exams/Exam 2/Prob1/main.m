% James Torok
% Problem 1
clc
clear
close all;
% parameters for the bisection
sigfigs     = 5;
y_low       = 0;
y_up        = 3;

% calculate es
es = 0.5*10^(2-sigfigs);

% constants
A = 2;
B = 3;
C = 4;

% function handle
fh = @(y,x) A*(x^2) + (B/(y+C)) - y;

% x vals
x =  linspace(0,1,50);

for i = 1:length(x)
   yy(i) = bisect(y_low,y_up,es,fh,x(i));
end

plot(x,yy)
title('X vs Y')
xlabel('X')
ylabel('Y')