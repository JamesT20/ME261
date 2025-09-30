% main function
function [gm,ra,hm] = arm_prop(x)
    n = length(x);
    gm = geo_mean(n,x);
    ra = rms_avg(n,x);
    hm = harmonic_mean(n,x);
end
% geometric mean
function [gm] = geo_mean(n,x)
    xProduct = 1;
    % multiply all the x values together
    for i = 1:n
        xProduct = xProduct * x(i);
    end
    gm = xProduct^(1/n);
end

% RMS avg
function [ra] = rms_avg(n,x)
    ra      = sqrt(sum(x.^2)/n);
end

% harmonic mean
function [hm] = harmonic_mean(n,x)
    hm = n/(sum(1./x));
end