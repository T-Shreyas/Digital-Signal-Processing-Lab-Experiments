%%circular convolution
x=[1 2 3 1];
h=[4 3 2 2];
n1=4;
n2=4;
n=0:3;
X=fft(x);
H=fft(h);
y1=cconv(x,h,4)
y2=ifft(X.*H)

subplot(2,2,1)
stem(n,abs(y1))
xlabel('n');
ylabel('Magnitude')
title('Circular convolution using time domain-Magnitude spectrum')

subplot(2,2,2)
stem(n,angle(y1))
xlabel('n');
ylabel('Phase angle')
title('Circular convolution using time domain-Phase spectrum')

subplot(2,2,3)
stem(n,abs(y2))
xlabel('n');
ylabel('Magnitude')
title('Circular convolution using frequency domain-Magnitude spectrum')

subplot(2,2,4)
stem(n,angle(y2))
xlabel('n');
ylabel('Phase angle')
title('Circular convolution using frequency domain-Phase spectrum')