function [y,n] = myfuction2(x,n)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    [x1,n1] = sigshift(x,n,-2);
    [x2,n2] = sigshift(x,n,-1);
    
    [x3,n3] = sigshift(x,n,1);
    [x4,n4] = sigshift(x,n,2);
    
    [y,n] = sigadd(3*x,n,x1,n1);
    [y,n] = sigadd(y,n,2*x2,n2);
    [y,n] = sigadd(y,n,2*x3,n3);
    [y,n] = sigadd(y,n,x4,n4);

end

