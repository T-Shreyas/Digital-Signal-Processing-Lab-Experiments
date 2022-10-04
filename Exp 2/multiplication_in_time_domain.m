%%multiplication
x1=[1 2 3 4];
x2=[0 1 0 1];
x=x1.*x2
X=fft(x)
N=4;
X1=fft(x1);
X2=fft(x2);
Y=cconv(X1,X2,4);
Z=Y.*(1/4)
n=0:N-1;

subplot(2,2,1)
stem(n,abs(X))
xlabel('k')
ylabel('Magnitude')
title('DFT of x1(n)*x2(n)')

subplot(2,2,2)
stem(n,angle(X))
xlabel('k')
ylabel('Angle')
title('DFT of x1(n)*x2(n)')

subplot(2,2,3)
stem(n,abs(Z))
xlabel('k')
ylabel('Magnitude')
title('(1/N)*Circular convolution of x1(n) and x2(n)')

subplot(2,2,4)
stem(n,angle(Z))
xlabel('k')
ylabel('Angle')
title('(1/N)*Circular convolution of x1(n) and x2(n)')
