clc
clear

% load and set matrix
load matrix.asc
C = matrix;
% find size
Csize = size(C);

% run function
results = GaussElim(Csize(1),Csize(2),C);

% print the result
fprintf("***************\n");
for i = [1:size(results,2)]
    fprintf("  x(%i) = %.3f\n",i,results(i))
end
fprintf("***************\n");

