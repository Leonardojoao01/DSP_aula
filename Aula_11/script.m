load handel;
s=y;
S = fft(s(:,1)');

H = zeros(1,length(S));

H(1)=1;
H(2:25000+2)=1;
H(end-25000:end)=1;
S2=S.*H;

subplot(311);plot(abs(S));
subplot(312);plot(abs(S2));
subplot(313);plot(abs(H));

s2=ifft(S2);
sound(s2);
