%linearity property
N=input('Number of terms in DFT:')
x=zeros(N);
y=zeros(N);
for a=1:N;
    x(a)=cos((a-1)*pi/4)
    y(a)=sin((a-1)*pi/4)
end
   


X=fft(x);
Y=fft(y);
Z=X+Y;
z1=abs(Z);

c=x+y
C=fft(c);
n=0:N-1;
subplot(2,1,1)
stem(n,z1)
xlabel('k');
ylabel('Magnitude');
title('DFT of x1(n)+x2(n)')

subplot(2,1,2)
stem(n,abs(C))
xlabel('k');
ylabel('Magnitude');
title('DFT of x(n)')

    
