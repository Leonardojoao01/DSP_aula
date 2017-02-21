function [ y,m ] = conv_a(x,n,hn,nh)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    
    tam_min = min(n)+min(nh);
    tam_max = max(n)+max(nh);
    
    m = tam_min:tam_max;
    y=zeros(1,length(m));
    
    [x,n] = sigadd(x,n,y,m);

    aux=flip(hn);
    
    tam = ceil(length(n)/2);
    m12 = tam_min+tam:tam_max+tam;
    
    [hn,nh] = sigadd(aux,nh,y,m12);
    
    for i=1:length(n)
        for j=1:i
            y(i)=y(i)+x(j)*hn(i-j+1);
        end;
    end;
end

