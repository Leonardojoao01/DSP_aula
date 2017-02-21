function [xe, xo, m, nm, n1, x1] = evenodd(x,n)         %[0,-5,5]

    if any(imag(x) ~= 0)
          error('x is not a real sequence')
    end

    m = -fliplr(n); % RAMPA
    m1 = min([m,n]); m2 = max([m,n]); m = m1:m2;
    nm = n(1)-m(1); n1 = 1:length(n); %nm = 0 ... n1 = 1,2,3,4,5,6,7,8,9,10,11
    
    x1 = zeros(1,length(m));
    x1(n1+nm) = x; x = x1;
    xe = 0.5*(x + fliplr(x));
    xo = 0.5*(x - fliplr(x));