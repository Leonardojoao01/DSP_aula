function [ y ] = filtro_upsampling_v2( x )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    x = x(:,:,1);
    
    y = zeros(size(x,1)*2,size(x,2));
    
    for i=1:1:size(x,1)
        for j=1:1:size(x,2)
            y(i+i-1,j+j-1) = x(i,j);
            
            if i == 1
                y(i+i-1,j+j) = ((x(i,j) - 5*x(i,j) + 20*x(i,j) +20*x(i,j)-5*x(i+1,j)+x(i+2,j))/1);
                y(i+i,j+j-1) = x(i,j);
                y(i+i,j+j) = x(i,j);
            elseif i == 2
                y(i+i-1,j+j) = ((x(i-1,j) - 5*x(i-1,j) + 20*x(i,j) +20*x(i,j)-5*x(i+1,j)+x(i+2,j))/1);
                y(i+i,j+j-1) = x(i,j);
                y(i+i,j+j) = x(i,j);
            elseif i == size(x,1)
                y(i+i-1,j+j) = ((x(i-2,j) - 5*x(i-1,j) + 20*x(i,j) +20*x(i,j)-5*x(i,j)+x(i,j))/1);
                y(i+i,j+j-1) = x(i,j);
                y(i+i,j+j) = x(i,j);
            elseif i == size(x,1)-1
                y(i+i-1,j+j) = ((x(i-2,j) - 5*x(i-1,j) + 20*x(i,j) +20*x(i,j)-5*x(i+1,j)+x(i+1,j))/1);
                y(i+i,j+j-1) = x(i,j);
                y(i+i,j+j) = x(i,j);
            else
                y(i+i-1,j+j) = ((x(i-2,j) - 5*x(i-1,j) + 20*x(i,j) +20*x(i,j)-5*x(i+1,j)+x(i+2,j))/1);
                y(i+i,j+j-1) = x(i,j);
                y(i+i,j+j) = x(i,j);
            end
        end
    end
    y=y/255;

end

