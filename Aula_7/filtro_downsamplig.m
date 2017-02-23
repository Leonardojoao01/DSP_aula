function [y] = filtro_downsamplig(x)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    
    %aux = x(:,:,1);
    aux = x;
    %y = zeros(size(aux,1),size(aux,2));
    
    h = round(size(aux,1)*0.5);
    v = round(size(aux,2)*0.5);
    
    y = zeros(h,v);
    
    %y = aux(1:2:end,1:2:end,:);

    for i=1:2:size(aux,1)
        for j=1:2:size(aux,2)
            y((i+1)/2,(j+1)/2)=aux(i,j);
        end;
    end; 
    y=y/255;
    
end

