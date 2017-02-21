function [x,n] = exp_real(n0,n1,n2)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    n=[n1:n0:n2];
    alpha = -0.1;%+0.3j;
    x = exp(alpha*n);
    
    subplot(2,2,1);stem(n,real(x));
    subplot(2,2,2);stem(n,abs(x));
    
end

