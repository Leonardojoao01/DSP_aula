a=5; b=pi; 
n0=0.1; n1=1; n2=50;

alpha=-0.1+0.3j;

subplot(1,3,1); [x,n] = exp_r(a,n1,n2); stem(n,x); title('Exponencial Real');

subplot(1,3,2); [x,n] = exp_compl(a,b,n1,n2); stem(n,x); title('Exponencial Complexa');

subplot(1,3,3); [x,n] = exp_compl_pe(alpha,n1,n2); stem(n,x); title('Exponencial Complexa Periódica');