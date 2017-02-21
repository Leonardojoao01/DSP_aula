function script
    juca = [1,1,1,1,1,1];
    juN = 6;
    
    [asd] = dft(juca, juN);
    stem(juN);
end

function [ Xk ] = dft( xn,N )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
n = [0:1:N-1];
k = [0:1:N-1];

WN = exp(-j*2*pi/N);
nk = n'*k;
WNnk = WN.^nk;
Xk = xn*WNnk;

end

