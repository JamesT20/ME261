clc
clear
clf

% define constants
z = 100;
R = 225;
C = 0.6*10^(-6);
L = 0.5;

% set equations
eq = @(w)sqrt(1/R^2+(w*C-1./(w*L)).^2)-1/z;

% graph equation
x = linspace(0,1000,100);
plot(x,eq(x));

% calculate initial guesses
w0 = 1;
w0_2 = 1000;

% calculte zeroes
w = fzero(eq,w0);
w_2 = fzero(eq,w0_2);

% print
fprintf('The angular freq with initial guess is %d is %.5f\n',w0,w)
fprintf('The angular freq with initial guess is %d is %.5f\n',w0_2,w_2)