%x = imread('mario.jpg');
a = imread('MiniKubrick.png');

%[z] = filtro_downsamplig(a);
%[y] = filtro_downsamplig_v2(x);
[j] = upsampling(a);
[h] = filtro_upsampling_v2(a);
h=h/255;
j=j/255;
subplot(2,2,1);imshow(a);
subplot(2,2,2);imshow(j);
subplot(2,2,3);imshow(h);

%w = j(1:1:end,1:1:end) + a(1:1:end,1:1:end);

subplot(2,2,4);imshow(j);