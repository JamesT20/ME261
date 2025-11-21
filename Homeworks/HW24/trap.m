function [area] = trap(a,b,n,f)
%TRAP Trapezoidal intergration

x = linspace(a,b,n);
y = f(x);
h = x(2) - x(1); 

% simplified from slides
area = (h/2)*(y(1)+2*sum(y(2:n-1))+y(n));

end

