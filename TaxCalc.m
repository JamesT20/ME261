% calculate taxes based off the given parameters
clear
clc

fprintf('This program calculates the taxes for Australia.\n');

income = input('Enter the person’s total income: ');

% 1.5% flat tax
medicare_tax    = income * 0.015;

% determine tax rate based off income
if income       <= 6000
    income_tax = 0;
elseif income   <= 20000
    income_tax = (income-6000)*0.17;
elseif income   <= 50000
    income_tax = 2380 + (income-20000)*0.30;
elseif income   <= 60000
    income_tax = 11380 + (income-50000)*0.42;
else
    income_tax = 15380 + (income-60000)*0.47;
end

% add both tax amounts to get a total
total_tax       = income_tax + medicare_tax;

% print reslts
fprintf("For an income of $%.2f, the taxes are:\n",income);
fprintf('----------------------------------\n');
fprintf("Medicare Levy\t=> $%.2f\n",medicare_tax);
fprintf("Income Tax\t\t=> $%.2f\n",income_tax);
fprintf('----------------------------------\n');
fprintf("Total Tax\t\t=> $%.2f\n",total_tax);
