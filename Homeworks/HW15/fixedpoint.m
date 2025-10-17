function [root,iterations] = fixedpoint(es,xo,fh)
    % initialize values
    ea      = 100;
    count   = 0;
    while ea > es
       xn = fh(xo);
       ea = 100*abs((xn-xo)/xn);
       xo = xn;
       count = count + 1;
    end
    root = xn;
    iterations = count;
end

