clc
clear

% set function
f = @(x)x.^3 .* exp(x);

% Trapezoid method
fprintf("Trapezoid Rule\n");

% gather a,b,n
a = input("Enter lower limit of range:");
b = input("Enter upper limit of range:");
n = input("Enter number of subdivisions (must be greater than 1):");

area = trap(a,b,n,f);

fprintf("The value of the integral from a = %d to b = %d \nusing %d equally spaced divisions is: %.5f\n",a,b,n,area)

