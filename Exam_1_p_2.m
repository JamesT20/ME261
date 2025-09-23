% James Torok
% Exam 1 problem 2
clc
clear

% prompt user for grades
exam_1_score    = input('Please enter a percent grade of Exam 1: ');
exam_2_score    = input('Please enter a percent grade of Exam 2: ');
hw_score        = input('Please enter a percent grade of Exam Homework: ');

% Calculate the final grade
p_final = exam_1_score * 0.40 + exam_2_score * 0.40 + hw_score * .20;

% do checks for invalid input grades
p_1_check = exam_1_score    < 0 || exam_1_score > 100;
p_2_check = exam_2_score    < 0 || exam_2_score > 100;
p_3_check = hw_score        < 0 || hw_score     > 100;

% Determine Letter grade
if  p_1_check || p_2_check || p_3_check
    LG = "X";
elseif p_final >= 90 && p_final <= 100
    LG = "A";
elseif p_final >= 80 && p_final < 90
    LG = "B";
elseif p_final >= 70 && p_final < 80
    LG = "C";
elseif p_final >= 60 && p_final < 70
    LG = "D";
elseif p_final < 60
    LG = "F";
end

% Print results
fprintf("The final score is %.1f\n",p_final)
fprintf("The letter grade is %s\n",LG)