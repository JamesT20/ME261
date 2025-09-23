clc
clear

% setup matricies

mat1 = [1,2,3;4,5,6;7,8,9]

mat2 = [9,8,7;6,5,4;3,2,1]

% Problem 1

ans_1 = sum(mat1 > mat2, 'all')

% Problem 2

ans_2 = mat1(mat1 > mat2)

% Problem 3

ans_3 = mat2(mat1 < mat2)

% Problem 4

ans_4 = sum(mat1(2,:) == mat2(2,:), 'all')

% Problem 5

ans_5 = any(mat1>mat2,'all')