function [deriv] = firstDeriv(x,y)
%firstDeriv Summary of this function goes here

% calcualte h,n
n = length(x);
h = x(2)-x(1);

% first point
deriv(1) = (-y(3)+4*y(2)-3*y(1))/(2*h);

% last point
deriv(n) = (3*y(n)-4*y(n-1)+y(n-2))/(2*h);

% middle points
for i = 2:n-1
    deriv(i) = (y(i+1)-y(i-1))/(2*h);
end

end

