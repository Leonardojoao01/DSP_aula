function [ y ] = filtro_upsampling_v2( x )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    %x = x(:,:,1);
    
    y = zeros(size(x,1)*2,size(x,2)*2);
    
    for i=1:size(x,1)
        for j=1:size(x,2)
            y(i+i-1,j+j-1) = x(i,j);
        end;
    end;
    
    for i=1:2:size(y,1)
        for j=2:2:size(y,2)
            
            if j == 2
                y(i,j) = ((y(i,j-1) - 5*y(i,j-1) + 20*y(i,j-1) +20*y(i,j+1)-5*y(i,j+3)+y(i,j+5))/32);                
            %end
            elseif j == 4
                y(i,j) = ((y(i,j-3) - 5*y(i,j-1) + 20*y(i,j-1) +20*y(i,j+1)-5*y(i,j+3)+y(i,j+5))/32);
            %end
            elseif j == 6
                y(i,j) = ((y(i,j-5) - 5*y(i,j-3) + 20*y(i,j-1) +20*y(i,j+1)-5*y(i,j+3)+y(i,j+5))/32);
            %end
     
            elseif j == size(y,2)
                y(i,j) = ((y(i,j-5) - 5*y(i,j-3) + 20*y(i,j-1) +20*y(i,j-1)-5*y(i,j-1)+y(i,j-1))/32);
            %end
            elseif j == size(y,2)-2
                 y(i,j) = ((y(i,j-5) - 5*y(i,j-3) + 20*y(i,j-1) +20*y(i,j+1)-5*y(i,j+1)+y(i,j+1))/32);
            %end
            elseif j == size(y,2)-4
                 y(i,j) = ((y(i,j-5) - 5*y(i,j-3) + 20*y(i,j-1) +20*y(i,j+1)-5*y(i,j+1)+y(i,j+3))/32);
            %end
            elseif j == size(y,2)-6
                 y(i,j) = ((y(i,j-5) - 5*y(i,j-3) + 20*y(i,j-1) +20*y(i,j+1)-5*y(i,j+3)+y(i,j+5))/32);
            %end
            else
                y(i,j) = ((y(i,j-5) - 5*y(i,j-3) + 20*y(i,j-1) +20*y(i,j+1)-5*y(i,j+3)+y(i,j+5))/32);
            end
            
            %else
            %end
        end
    end
    
    %for i=1:2:size(y,1)
    %    for j=2:2:size(y,2)
    %        aux(i,j) = y(j,i);
    %    end
    %end
    
    
    
    %aux
    
    %for i=1:2:size(aux,1)
    %    for j=2:2:size(aux,2)
    %        y(j,i) = aux(i,j);
    %    end
    %end
    for j=1:1:size(y,1)
        for i=2:2:size(y,2)
            
            if i == 2
                y(i,j) = ((y(i-1,j) - 5*y(i-1,j) + 20*y(i-1,j) +20*y(i+1,j)-5*y(i+3,j)+y(i+5,j))/32);                
            %end
            elseif i == 4
                y(i,j) = ((y(i-3,j) - 5*y(i-1,j) + 20*y(i-1,j) +20*y(i+1,j)-5*y(i+3,j)+y(i+5,j))/32);
            %end
            elseif i == 6
                y(i,j) = ((y(i-5,j) - 5*y(i-3,j) + 20*y(i-1,j) +20*y(i+1,j)-5*y(i+3,j)+y(i+5,j))/32);
            %end
     
            elseif i == size(y,2)
                y(i,j) = ((y(i-5,j) - 5*y(i-3,j) + 20*y(i-1,j) +20*y(i-1,j)-5*y(i-1,j)+y(i-1,j))/32);
            %end
            elseif i == size(y,2)-2
                 y(i,j) = ((y(i-5,j) - 5*y(i-3,j) + 20*y(i-1,j) +20*y(i+1,j)-5*y(i+1,j)+y(i+1,j))/32);
            %end
            elseif i == size(y,2)-4
                 y(i,j) = ((y(i-5,j) - 5*y(i-3,j) + 20*y(i-1,j) +20*y(i+1,j)-5*y(i+1,j)+y(i+3,j))/32);
            %end
            elseif i == size(y,2)-6
                 y(i,j) = ((y(i-5,j) - 5*y(i-3,j) + 20*y(i-1,j) +20*y(i+1,j)-5*y(i+3,j)+y(i+5,j))/32);
            %end
            else
                y(i,j) = ((y(i-5,j) - 5*y(i-3,j) + 20*y(i-1,j) +20*y(i+1,j)-5*y(i+3,j)+y(i+5,j))/32);
            end
            
            %else
            %end
        end
    end

end

