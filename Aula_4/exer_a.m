[x1,n1] = impseg(0,-4,4);

[x2,n2] = sigshift(x1,n1,-2);
[x2,n2] = impmult(3,x2,n2);

%stem(n2,x2);

[x3,n3] = sigdeg(0,-10,10);
[x3,n3] = sigshift(x3,n3,5);
[x3,n3] = impmult(-2,x3,n3);

%stem(n4,x4);
%[x5,n5] = sigtemp(2,x3,n3);
[x5,n5] = sigdeg(0,-10,10);
%[x5,n5] = sigtemp(0.5,x5,n5);
x5 = -1 .* x5;

[x7,n7] = sigadd(x2,n2,x3,n3);
%[x7,n7] = sigadd(x7,n7,x5,n5);


%integral
[x9,n9] = sigint(x7,n7);
%Derivada
[x8,n8] = sigdif(x7,n7);

subplot(2,3,1);stem(n2,x2);title('3sig[n+2]');xlabel('n');
subplot(2,3,2);stem(n3,x3);title('-2u[n-5]');xlabel('n');
subplot(2,3,3);stem(n5,x5);title('-u[0.5n]');
subplot(2,3,4);stem(n7,x7);title('x[n]');

subplot(2,3,5);stem(n8,x8);title('Derivada');
subplot(2,3,6);stem(n9,x9);title('Integral');
