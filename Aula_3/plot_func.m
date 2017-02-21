
[x1,n1] = impseg(0,-5,5);
[x2,n2] = impseg(2,-5,5);
[x3,n3] = stepseq(0,-5,5);
[x4,n4] = stepseq(-2,-5,5);
[x5,n5] = rampseq(0,-5,5);
[x6,n6] = rampseq(0,0,5);

subplot(2,3,1);stem(n1,x1);title('Função Impulso');
subplot(2,3,2);stem(n3,x3);title('Função Degrau');
subplot(2,3,3);stem(n5,x5);title('Função Rampa');
subplot(2,3,4);stem(n2,x2);
subplot(2,3,5);stem(n4,x4);
subplot(2,3,6);stem(n6,x6);