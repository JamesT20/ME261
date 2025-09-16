clc
clear

% generate correct number
correct_number  = randi(1000);

% Show initial text
disp("I have a number between 1 and 1000")
disp("Can you guess my number?")

% get first input
user_number     = input("Please type your first guess: ");

% repeat loop until correct number guessed
while user_number ~= correct_number
    % too low
    if user_number < correct_number
        user_number     = input("Too Low. Try again! Enter New Guess: ");
    % too high
    elseif user_number > correct_number
        user_number     = input("Too High. Try again! Enter New Guess: ");
    end
end

% once corret, tell user they were correct
disp("Excellent! You guessed the correct number!")