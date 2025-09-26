function [c] = cros_prod(a,b)
% cros_prod gets the cross product of vectors a and b
% and returns as vector c

% calculate c
c = [
    a(2)*b(3)-a(3)*b(2);
    a(3)*b(1)-a(1)*b(3);
    a(1)*b(2)-a(2)*b(1);
];

end