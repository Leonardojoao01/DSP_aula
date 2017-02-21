function image_reg = image(arquivo)

x = imread(arquivo);
B = imresize(x,0.5);
imshow(B);

end