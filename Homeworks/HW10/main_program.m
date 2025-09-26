% main program
clc
clear
% set constants
w_1 = 0.3;
w_2 = 0.5;
l = 12;
theta = 30;

% calculate angular velocity
ang_velo = [0; w_1; w_2];

% calculate anglar accel
ang_accel = cros_prod([0;w_1;0],[0;0;w_2]);

% calculate distance
distance = [l*cosd(theta); l*sind(theta); 0];

% calculate final accel
acel = cros_prod(ang_accel,distance) + cros_prod(ang_velo,cros_prod(ang_velo,distance));

% display final accel
fprintf("The calculated acceleration is: [%.3f, %.3f, %.3f]\n",acel)