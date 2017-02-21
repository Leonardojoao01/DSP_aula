function [ S2 ] = mescla( sju,s1ju )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    %s = imread('marilyn.jpg');
    %s1 = imread('albert.jpg');
    s=sju;
    s1=s1ju;    
    
    s = s(:,:,1);
    s1 = s1(:,:,1);

    s = fft2(s);
    s1 = fft2(s1);

    S = fftshift(s);
    S1 = fftshift(s1);

    comprimento_x = size(S,1);
    comprimento_y = size(S,2);

   % if comprimento_x < comprimento_y
   %     r = comprimento_x/2;
   % else
    %    r = comprimento_y/2;
    %end;
    
    r = 25;

    for i=1:size(S,1)
        for j=1:size(S,2)
            cal = (i-comprimento_x/2)^2 + (j-comprimento_y/2)^2 - r^2;
            cal2 = (i-comprimento_x/2)^2 + (j-comprimento_y/2)^2 - (r/2)^2;
        
            if cal2 < 0
                S(i,j) = S1(i,j);
            end;
            if cal < 0 && cal2 > 0              %Fora do raio da circunferência
                S(i,j) = (S1(i,j)+S(i,j))/2;
            end;
        end;
    end;

    S1 = fftshift(S);

    S2 = ifft2(S1)/255;

end

