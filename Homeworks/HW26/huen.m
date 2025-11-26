function [y] = huen(h,x,fh)
%huen method

% calculate n from x
n = length(x);

% set initial value
y(1) = 1;

% calculate rest of y with huen method
for i = 1:n-1
    yo      = y(i) + h * fh(x(i),y(i));
    yop     = fh(x(i+1),yo);
    yavg    = ( fh(x(i),y(i)) + yop)/2;
    y(i+1)  = y(i) + yavg*h;
end
end

