function [y,n] = myfunction(x,m)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    
    z=min(m):max(m)+2;
    n=z;
    
    aux=zeros(1,length(z));
    [y,n] = sigadd(aux,z,x,m);
    
   % y(1)=x(i);
    %y(2)=2*x(i);
    for i=3:length(m)-2
         y(i)= (3*x(i) +  2*x(i+1) + x(i+2))/3;
    end;
    

end

