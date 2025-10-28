clc
clear
close all

% set of x values
x = linspace(0,1200,50);

% equation for graphing 
eq = @(T)0.99403 + 1.671*10^(-4)*T + 9.7215*10^(-8)*T^2 - 9.5838*10^(-11)*T^3 + 1.9520*10^(-14)*T^4;

% populate cp with zeroes
cp = zeros(1,50);

% solve each x individually
for i = 1:length(x)
    cp(i) = eq(x(i));
end
% plot results
plot(x,cp);
title('Zero Pressure Specific Heat of Dry air ')
xlabel('Temperature (K)')
ylabel('Specific Heat (KJ/KJ K')

% PART 2

% find roots at 1.1 = cp
coeffs = [1.9520e-14 -9.5838e-11  9.7215e-8  1.671e-4  (0.99403 - 1.1)];
roots = roots(coeffs);

% find real nonzero roots
for i = 1:length(roots)
    if isreal(roots(i)) && roots(i) > 0
        Temp = roots(i);
    end
end

% print result
fprintf('The temperature corresponding to a specific heat of 1.1 is %.2f K\n',Temp)

