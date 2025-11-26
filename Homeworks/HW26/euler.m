function [y] = euler(h,x,fh)
%euler method

% calculate n from x
n = length(x);

% set initial value
y(1) = 1;

% calculate rest of y with huen method
for i = 1:n-1
    y(i+1) = y(i) + h*fh(x(i),y(i));
end
end

