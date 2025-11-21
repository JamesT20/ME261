clc
clear

% set function
f = @(x)x.^3 .* exp(x);

% simpson method
fprintf("Simpson 1/3 rule\n");

% gather a,b,n
a = input("Enter lower limit of range:");
b = input("Enter upper limit of range:");
n = input("Enter number of subdivisions (must be greater than 1):");

area = simpson(a,b,n,f);

fprintf("The value of the integral from a = %d to b = %d \nusing %d equally spaced divisions is: %.5f\n",a,b,n,area)