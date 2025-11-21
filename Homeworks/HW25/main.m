clc
clear
close all;

% define points
t = [0 0.52 1.04 1.75 2.37 3.25 3.83];
x = [153 185 208 249 261 271 273];

% 30 t values 
tt = linspace(0,3.83,30);

% spline x values
xx = spline(t,x,tt);

% calculate derivatives
v = firstDeriv(tt,xx);
a = firstDeriv(tt,v);

% plot the graphs

subplot(2,1,1);
plot(tt, v);
xlabel('Time (s)');
ylabel('Velocity (m/s)');
title('Jet Fighter Velocity');
ylim([-50 100]);


subplot(2,1,2);
plot(tt, a);
xlabel('Time (s)');
ylabel('Acceleration (m/s^2)');
title('Jet Fighter Acceleration');
ylim([-200 100]);