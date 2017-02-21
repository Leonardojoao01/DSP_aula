%[x,n] = double(impseg(0,-10,10));
[x,n] = impseg(0,-10,10);

[x1,n1] = myfunction2(x,n);

[x3,n3] = stepseq(0,-10,10);
[y,ny] = conv_n(x3,n3,x1,n1);


stem(ny,y);
%stem(n3,x3);
%stem(ny,y);