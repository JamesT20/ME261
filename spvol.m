% Problem 1: calculates the volume of a hollow sphere

% Gather inputs
r_i = input('Enter the Inner radius: ');
r_o = input('Enter the Outer radius: ');

% calculate volume
volume = ((4*pi)/3) * (r_o^3 - r_i^3);

% Round to 2 decimals
volume_rounded = round(volume,2);

% Display only 2 decimals in output
fprintf('The volume is %.2f\n',volume_rounded)
