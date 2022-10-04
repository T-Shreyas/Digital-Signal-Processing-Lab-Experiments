%conjugate symmetry
x=[1 0 1 0 1];
N=5;
y=0:4;
X=fft(x)
subplot(2,1,1)
stem(y,abs(X))
xlabel('k');
ylabel('Magnitude');
title('Magnitude spectrum of X(k)');
hold on;
subplot(2,1,2)
stem(y,angle(X))
xlabel('k');
ylabel('Angle');
title('Phase spectrum of X(k)');
