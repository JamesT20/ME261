% James Torok
% Problem 2
clc
clear

% setup augmented matrix, A|B
C = [
    0  -3  5  9;
    4   7 -2 12;
    -1  2  0  3;
    ];

% find size [rows,columns]
Csize = size(C);
rows = Csize(1);
columns = Csize(2);

% extract matrix A
A = C(:,1:columns-1);

% extract solutions B
B = C(:,columns);

% solve with direct method (inverse)
directResult = A^(-1) * B;

% f. swap order of first, second equations
firstRow    = C(1,:);
secondRow   = C(2,:);
C(2,:) = firstRow;
C(1,:) = secondRow;
% solve with gaussian elimination method
gaussResult = gaussian(rows,columns,C);

% print the result (direct)
fprintf("** DIRECT WAY **\n");
for i = 1:size(directResult,1)
    fprintf("  x(%i) = %.3f\n",i,directResult(i))
end
fprintf("****************\n");

% print the result (gauss)
fprintf("** GAUSS ELIM **\n");
for i = [1:size(gaussResult,2)]
    fprintf("  x(%i) = %.3f\n",i,gaussResult(i))
end
fprintf("****************\n");

