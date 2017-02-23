function [ y ] = filtro_downsamplig_v2( x )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    %x = x(:,:,1);
    
    y = zeros(round(size(x,1)*0.5),round(size(x,2)*0.5));

    %1/2(x[2n]+x[2n+1])
    for i=1:2:size(x,1)
        for j=1:2:size(x,2)
            if i == size(x,1) && j ~= size(x,2)
                y((i+1)/2,(j+1)/2) = (x(i,j) + x(i,j+1) + x(i,j) + x(i,j+1))*0.25;
                
            elseif i ~= size(x,1) && j == size(x,2)
                y((i+1)/2,(j+1)/2) = (x(i,j) + x(i,j) + x(i+1,j) + x(i+1,j))*0.25;
                
            else
                y((i+1)/2,(j+1)/2) = (x(i,j) + x(i,j+1) + x(i+1,j) + x(i+1,j+1))*0.25;
                %y((i+1)/2,(j+1)/2) = x(i,j);
            end
        end
    end
    y=y/255;
        
        
end

