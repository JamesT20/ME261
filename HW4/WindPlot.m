% Creates a wind plot vs the recorded values
clear
clc

% record real data
velocity_data = 10:10:80;
force_data = [25 70 380 550 610 1220 830 1450];

% create velocity function data
velocity_function = 0:2:100;
force_function = 0.2741*(velocity_function.^(1.9842));

% plot both on the same graph
figure

% plot the real data
plot(velocity_data,force_data,"mo")

hold;

% plot the function data
plot(velocity_function,force_function,'k')

% add titles and labels
title('Wind Tunnel Results');
xlabel('Velocity (m/s)');
ylabel('Force (N)');
legend('Data Points','Equation','Location','northwest')

% limmit the x range to 80 to match example
xlim([0,80]);