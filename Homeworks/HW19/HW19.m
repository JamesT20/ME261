clc
clear
A = [
    8 -2 -1 0 0;
    -2 9 -4 -1 0;
    -1 -3 7 -1 -2;
    0 -4 -2 12 -5;
    0 0 -7 -3 15;
    ];

b = [5;2;1;1;5];

% run function
results = crammers_rule(A,b);

% print the result
fprintf("***************\n");
for i = [1:size(results,2)]
    fprintf("  x(%i) = %.3f\n",i,results(i))
end
fprintf("***************\n");


% crammers rule function
function [x] = crammers_rule(A,b)
   % deternine number of columns
   column_size = size(A,2);
   % create output matrix to fill with ansawers
   x = zeros(1,column_size);

   % calculate og determinantn
   dD = det(A);

   % loop through and calculate each root, save to the matrix
   for i = [1:column_size]
       C = A; % create a new coefficient matrix
       C(:,i) = b; % replace column with b column
       nD = det(C); % calculate the determinand
       x(i) = nD/dD; % calculate the root, save to the output matrix
   end

end
