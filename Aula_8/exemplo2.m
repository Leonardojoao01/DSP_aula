n=0:25;
x=(0.5).^n;

subplot(1,3,1);stem(n,x);

M=100;
w=(-M:M)/M*pi;
X=(exp(1i*w)./(exp(1i*w)-0.5));

subplot(1,3,2);plot(w/pi,abs(X));
subplot(1,3,3);plot(w/pi,angle(X));
