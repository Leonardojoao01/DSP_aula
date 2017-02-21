function [ S2 ] = bordas( imagem )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    %s = imread('mario.jpg');
    %s = s(:,:,1);
    
    s = imagem(:,:,1);

    S = fft2(s);
    S = fftshift(S);

    comprimento_x = size(S,1);
    comprimento_y = size(S,2);

    %if comprimento_x < 700 || comprimeto_y < 700
    %    r = 2;
    %else
    %    r = 50;
    %end;
    
    r=50;

    for i=1:size(S,1)
        for j=1:size(S,2)
            cal = (i-comprimento_x/2)^2 + (j-comprimento_y/2)^2 - r^2;
            if cal > 0              %Fora do raio da circunferência
                S(i,j)=0;
            end;
        end;
    end;

    S1 = fftshift(S);
    S2 = ifft2(S1)/255;

end

