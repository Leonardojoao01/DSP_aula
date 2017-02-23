function X = dtft_vf(x,n,M)
    
    k = -M:M;
    w = (pi/M)*k;
    X = zeros(1,length(w));
    for i=1:length(w)
        for j=1:length(n)
            X(i) = x(j).*exp(-1i*w(i)*n(j)) + X(i);
        end
    end
    magX = abs(X); angX = angle(X);
    realX = real(X); imagX = imag(X);
     subplot(2,2,1); 
    plot(k/M,magX);grid
    xlabel('frequency in pi units'); title('Magnitude Part')
     subplot(2,2,3); plot(k/M,angX/pi);grid
     xlabel('frequency in pi units'); title('Angle Part')
     subplot(2,2,2); plot(k/M,realX);grid
     xlabel('frequency in pi units'); title('Real Part')
     subplot(2,2,4); plot(k/M,imagX);grid
     xlabel('frequency in pi units'); title('Imaginary Part')
end