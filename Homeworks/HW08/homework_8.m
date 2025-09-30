clc
clear
close all

% contstant values
a   = 0.15;
b   = 0.05;
L_o = sqrt(a^2+b^2);
K   = 2800;

% Create array of 50 x values
x   = linspace(0,0.2,50);

% Create array of L values
L   = sqrt(a^2+(b+x).^2);

% Create array of W values
W = ((2*K)./L) .* (L-L_o) .* (b + x);

% create plot
plot(x,W)
% add titles and labels
title('W vs X plot');
ylabel('W (N)');
xlabel('x (m)');