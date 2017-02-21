function [y,n] = sigtemp(m,x,n)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
    z = n*m;
    y = zeros(1,length(z));
    %n=z;
    [y,n] = sigadd(x,n,y,z);

end

