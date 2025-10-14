function [root,iterations] = falsepos(xl,xu,es,fh)
    % initialize values
    ea      = 100;
    count   = 0;
    xro   = xl;
    while ea > es
        % 1. find values of y at high,low
        yl = fh(xl);
        yu = fh(xu);
        % 2. do linerar fit to calculate xr
        xr = (xl*yu - xu*yl)/(yu-yl);
        % 3. find yxr (y at xr)
        yr = fh(xr);

        % 3. use new point xr to replace original point
        if yr * yl < 0
            xu = xr;
        elseif yr * yl > 0
            xl = xr;
        else
            break
        end
        % 4. compare es to ea
        ea = 100* abs((xr-xro)/xr);
        
        % set xrold to xr
        xro = xr;
        
        % increase count
        count = count + 1;
    end
    root = xr;
    iterations = count;
end

