%x = imread('mario.jpg');
a = imread('Kubrick.png');

%[z] = filtro_downsamplig(a);
[y1] = filtro_downsamplig(a(:,:,1));
[y2] = filtro_downsamplig(a(:,:,2));
[y3] = filtro_downsamplig(a(:,:,3));



%y1=y1/255;
%y2=y2/255;
%y3=y3/255;

dB = cat(3,y1,y2,y3);

[j1] = filtro_upsampling_v2(y1);
[j2] = filtro_upsampling_v2(y2);
[j3] = filtro_upsampling_v2(y3);
%[z] = filtro_downsamplig(j);
%[h] = filtro_upsampling_v2(a);
%h=h/255;
%j1=j1/255;
%j2=j2/255;
%j3=j3/255;
%j=uint8(j);

%subplot(2,2,1);imshow(a);
%subplot(2,2,2);imshow(j);
%subplot(2,2,3);imshow(h);

%w = j(1:1:end,1:1:end) + a(1:1:end,1:1:end);

%subplot(2,2,4);imshow(j);

dA = cat(3,j1,j2,j3);
%dB = cat(3,y1,y2,y3);

h1=subplot(2,2,1);imshow(a);title('Original');
%subplot(2,2,2);imshow(y1);
h2=subplot(2,2,2);imshow(a);title('Original');
h3=subplot(2,2,3);imshow(dB);title('Down');
h4=subplot(2,2,4);imshow(dA);title('Up');

linkaxes([h1,h2,h3,h4]);


