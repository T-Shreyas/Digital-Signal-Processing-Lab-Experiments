%%periodicity
x=[1 2 1 0];
k=0:3;
N=4;
i=sqrt(-1);
n=0:3;
w1=exp(-2*pi*i/N);
w1n=n'*k;
w1nnk=w1.^w1n
xk=x*w1nnk


w=exp(-2*pi*i/N);
wn=n'*(N+k);
wnnk=w.^wn
yk=x*wnnk


subplot(2,2,1)
stem(n,abs(xk));
xlabel('k')
ylabel('Magnitude')
title('Magnitude spectrum of X(k)')

subplot(2,2,2)
stem(n,angle(xk));
xlabel('k')
ylabel('Angle')
title('Phase spectrum of X(k)')

subplot(2,2,3)
stem(n,abs(yk));
xlabel('k')
ylabel('Magnitude')
title('Magnitude spectrum of X(N+k)')

subplot(2,2,4)
stem(n,angle(yk));
xlabel('k')
ylabel('Angle')
title('Phase spectrum of X(N+k)')