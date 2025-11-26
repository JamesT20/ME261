clc
clear
close all;

% step size h
h = 0.05;

% position vector
x = 0:h:1;

% function handle dy/dx
fh = @(x,y) (1+4*x) * sqrt(y);

% calculate with euler method
eulerResult = euler(h,x,fh);

% calculate with huen method
huenResult = huen(h,x,fh);

% graph both
plot(x,eulerResult,x,huenResult,'LineWidth',3)
legend('Eulers','Heuns')
title('y vs. x')