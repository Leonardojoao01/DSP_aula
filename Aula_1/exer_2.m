x = imread('imagem.jpg');
z = x(:,:,1);
y = x(:,:,3);
w = z + y;
imshow(w);