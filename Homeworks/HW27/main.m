clc
clear
close all;

% step size h
h = 0.05;

% initial value
y1 = 1;

% position vector
x = 0:h:1;

% function handle dy/dx
fh = @(x,y) (1+4*x) * sqrt(y);

% calculate with rk4 method
rk4Method = RK4(h,x,fh,y1);

% graph
plot(x,rk4Method,'LineWidth',3)
title('y vs. x (RK4)')