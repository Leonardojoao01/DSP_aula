function [y,n] = sigdeg(n0,n1,n2)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    n=n1:n2;
    y = (n-n0) >= 0;

end

