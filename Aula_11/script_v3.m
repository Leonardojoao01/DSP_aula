s = imread('marilyn.jpg');
s1 = imread('albert.jpg');

s = s(:,:,1);
s1 = s1(:,:,1);

s = fft2(s);
s1 = fft2(s1);

S = fftshift(s);
S1 = fftshift(s1);

comprimento_x = size(S,1);
comprimento_y = size(S,2);

if comprimento_x < comprimento_y
    r = comprimento_x/2;
else
    r = comprimento_y/2;
end;
    
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
        %else
        %    S(i,j) = S1(i,j);
        end;
    end;
end;

S1 = fftshift(S);

%AUX = S;
%AUX = abs(AUX);
%AUX = log(AUX+1); 
%AUX = mat2gray(AUX);

S2 = ifft2(S1);

%subplot(221);imshow(s);
%subplot(222);imshow(S);
%subplot(223);imshow(S1);
%subplot(114);
imshow(S2,[]);