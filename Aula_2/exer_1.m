t = 0:0.01:440;
x = sin(2*pi*t);
Fs = 10 * 440;
plot(t,x,'black')

sound(x, Fs);