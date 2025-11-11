clc
clear

% data
y = [15.1, 17.9, 12.7, 25.6, 20.5, 35.1, 29.7, 45.4, 40.2];
x1 = [0, 1, 1, 2, 2, 3, 3, 4, 4];
x2 = [0, 1, 2, 1, 2, 1, 2, 1, 2];

% calculate n
n = length(y);

% setup matricies for solving for a0, a1, a2
A = [
    n       sum(x1)     sum(x2);
    sum(x1) sum(x1.^2)  sum(x1.*x2);
    sum(x2) sum(x2.*x1) sum(x2.^2);
    ];

c = [
    sum(y);
    sum(x1.*y);
    sum(x2.*y);
    ];

% solve for a0, a1, a2 by matrix multiply
x = A^-1 * c;

a0 = x(1);
a1 = x(2);
a2 = x(3);

fprintf('a0 = %.4f, a1 = %.4f, a2 = %.4f\n', a0, a1, a2);