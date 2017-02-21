function [ y ] = upsampling( x )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    x = x(:,:,1);
    
    y = zeros(size(x,1)*2,size(x,2));
    
    for i=1:1:size(x,1)
        for j=1:1:size(x,2)
            y(i+i-1,j+j-1) = x(i,j);
            y(i+i-1,j+j) = x(i,j);
            y(i+i,j+j-1) = x(i,j);
            y(i+i,j+j) = x(i,j);
            
        end
    end

end

