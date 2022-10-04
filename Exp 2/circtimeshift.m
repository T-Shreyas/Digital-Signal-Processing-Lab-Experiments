%circular time shift
xn=[1 2 3 1]
N=4;
k=[0:1:N];
b=0:N-1;
j=sqrt(-1);
X=fft(xn);
m=2;
y=circshift(xn,[1:m]);
Y=fft(y)
wn=exp(-2*pi*j/N);
C=zeros(N);
mk=zeros(N);
mk=m.*k;
for a=1:N
    C(a)=X(a)*(wn.^mk(a))
end
subplot(2,1,1)
stem(b,abs(Y))
xlabel('k');
ylabel('Magnitude');
title('Magnitude spectrum of DFT of x((n-m))')

subplot(2,1,2)
stem(b,abs(C))
xlabel('k');
ylabel('Magnitude');
title('Magnitude spectrum of DFT of x((n-m)) using property')


    
