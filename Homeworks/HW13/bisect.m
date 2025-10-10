function [root,iterations] = bisect(yl,yu,es,maxn,fh)
    %FUNCTION Summary of this function goes here
    %   Detailed explanation goes here
  
    % solve with current params,
    
    % initialize values
    ea = 100;
    count = 0;
    yo = (yu + yl)/2;

    % run until acceptable convergence or max iterations
    while ea > es && count <= maxn
        % calculate the middle y
        ym = (yu + yl)/2
        % calculate the values of middle y and low y
        vm = fh(ym);
        vl = fh(yl);
        % determine if on lower or upper
        if vl * vm > 0
            yl = ym;
        elseif vl * vm < 0
            yu = ym;
        else
            yo = ym;
        end
        
        % calculate error 
        ea = 100 * abs((ym-yo)/ym);
        
        % set current middle to old y
        yo = ym;

        % increase the counter
        count = count + 1;
    end

    % export the resulting roots and iteration count
    root = yo;
    iterations = count;
    end
