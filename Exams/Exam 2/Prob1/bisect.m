% James Torok
% Problem 1
function [root] = bisect(yl,yu,es,fh,x)
ea = 100;
yo = yl;
while ea > es
    ym = (yl+yu)/2;

    if fh(yl,x)*fh(ym,x) < 0
        yu = ym;
    elseif fh(yl,x)*fh(ym,x) > 0
        yl = ym;
    else
        yo = ym;
    end
    ea = 100*abs((ym-yo)/ym);
    yo = ym;
end
root = yo;
end
