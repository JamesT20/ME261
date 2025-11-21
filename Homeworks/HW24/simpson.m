function [area] = simpson(a,b,n,f)
%SIMPSON simpson 1/3 method
if mod(n,2) == 1
    % add 1 to make even
    n = n + 1;
end
x = linspace(a,b,n+1);
y = f(x);
h = (b-a)/n; 

% split odd an even numbers
odds  = 2:2:n;
evens = 3:2:n-1;

area = (h/3) * ( y(1) + 4*sum(y(odds)) + 2*sum(y(evens)) + y(end) );
end

