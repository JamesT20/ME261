% Shows table of celcius and rankin values based off user inputted
% increment
clear
clc

% get input of increment
inc = input('Enter the desired increment in degrees C: ');

% create initial array of celcius temps
temps_c = 0:inc:100;
% convert to fahrenheit
temps_f = (9/5) * temps_c + 32;
% convert to rankin 
temps_r = temps_f + 459.67;

% Print headers
fprintf('Degrees Celsius\t\tDegrees Rankin\n')
fprintf('----------------------------------\n')

% Print out each row in the array
for index = 1:length(temps_c)
    fprintf("\t%.0f\t\t\t\t%.2f\n",temps_c(index),temps_r(index))
end 