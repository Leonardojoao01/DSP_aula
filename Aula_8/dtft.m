function X = dtft(x,n,M) 
    if(nargin< 3) %se apenas 2 argumentos são passados como parâmetro, seta M como 500 
        M = 500; 
    end
    
    k = -M:M;
    w = (pi/M)*k; 
    X = x * (exp(-j*pi/M)).^(n'*k);

    magX= abs(X); angX= angle(X); 
    realX= real(X); imagX= imag(X); 
    subplot(2,2,1); plot(k/M,magX);grid 
    xlabel('frequencyin piunits');title('Magnitude Part') 
    subplot(2,2,3);plot(k/M,angX/pi);grid 
    xlabel('frequency in pi units');title('Angle Part') 
    subplot(2,2,2); plot(k/M,realX);grid 
    xlabel('frequency in pi units');title('Real Part') 
    subplot(2,2,4);plot(k/M,imagX);grid 
    xlabel('frequency in pi units');title('Imaginary Part')
end