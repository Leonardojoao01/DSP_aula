function[X,k] = dtft(x,n,M) 
    if(nargin< 3) %se apenas 2 argumentos são passados como parâmetro, seta M como 500 
        M = 500; 
    end
    k = 0:2*M;   
    X = x * (exp(-1i*pi/M)).^(n'*k);
end
