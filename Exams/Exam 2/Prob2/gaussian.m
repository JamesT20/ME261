% James Torok
% Problem 2
function [X] = gaussian(nr,nc,C)

% forward elimination
for i = 1:nr-1
    for j = i+1:nr
        C(j,:) = C(j,:)-C(i,:)*C(j,i)/C(i,i);
    end
end

% back sub
for i = nr:-1:1
    sm = 0;
    for j = nr:-1:i+1
        sm = sm + C(i,j) * X(j);
    end
    X(i) = (C(i,nr+1)-sm)/C(i,i);
end

