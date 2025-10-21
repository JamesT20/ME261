function [root,iterations] = secantmethod(es,x1,x2,fh)
    % initialize values
    ea      = 100;
    count   = 0;
    % do loop
    while ea > es
       xn = x2 - fh(x2)*(x2-x1)/(fh(x2) - fh(x1));

       % calculate error
       ea = 100*abs((xn-x2)/xn);
       
       % set new limits
       x1 = x2;
       x2 = xn;

       % increase count
       count = count + 1;
    end
    root = xn;
    iterations = count;
end

