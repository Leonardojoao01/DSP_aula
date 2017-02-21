s = imread('mario.jpg');
s = s(:,:,1);

S = fft2(s);

S = fftshift(S);

comprimento_x = size(S,1);
comprimento_y = size(S,2);

if comprimento_x < comprimento_y
    r = 25;%comprimento_x/2;
else
    r = 25;%;comprimento_y/2;
end;

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
S2 = ifft2(S1);

subplot(121);imshow(s);
%subplot(222);imshow(S);
%subplot(223);imshow(S1);
subplot(122);imshow(S2,[]);

%s2=ifft(S2);
%sound(s2);