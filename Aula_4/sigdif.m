function [y, n] = sigdif(x, n)
    y = x;
    for i = 1:length(n) - 1;
        y(i + 1) = x(i + 1) - x(i);        
    end;
end