clc
clear

% Create initial variables
v_values = zeros(100);
t_values = linspace(-5,70,100);

% loop through each time data point
for i = 1:length(t_values)

    % grab time value based off position in array
    t = t_values(i);

    % calculate v based off t value
    if t >= 0 && t <= 8
        v = 10*t^2 -0.5*t;
    elseif t >= 8 && t <= 16
        v = 676-5*t;
    elseif t >= 16 && t <= 26
        v = 20 + 36*t + 12*(t-16)^2;
    elseif t >= 26
        v = 2156*exp(-0.1*(t-26)); 
    else
        v = 0;
    end
    
    % change v value to the correct v
    v_values(i) = v;
end

% create plot
plot(t_values,v_values)

% add titles and labels
title('Rocket Velocity Profile');
xlabel('Time (s)');
ylabel('Velocity (m/s)');