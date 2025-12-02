function [y] = rk4(h,x,fh,y1)
%runge kutta 4th order method

% calculate n from x
n = length(x);

% set initial value
y(1) = y1;

for i = 1:n-1
    % get each k
    k1 = fh(x(i),y(i));
    k2 = fh(x(i)+(1/2)*h,y(i)+(1/2)*k1*h);
    k3 = fh(x(i)+(1/2)*h,y(i)+(1/2)*k2*h);
    k4 = fh(x(i)+h,y(i)+k3*h);

    % set y value
    y(i+1) = y(i) + (1/6)*(k1 + 2*k2 + 2*k3 + k4)*h;
end
end

