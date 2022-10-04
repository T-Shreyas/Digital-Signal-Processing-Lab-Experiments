%circular frequency shift
xk=[4 -2j 0 2j];
N=4;
n=0:N-1;
k=0:N-1;
i=sqrt(-1);
z=0:N-1
x=ifft(xk)
m=2;
mk=-m.*k;
yk=circshift(xk,[1:m]);
y=ifft(yk)
w= exp(-2*i*pi/N);

for a=1:N;
    z(a)=x(a)*(w.^mk(a))
end
subplot(2,2,1)
stem(n,abs(z),'b');
xlabel('n');
ylabel('Magnitude')
title('Magnitude spectrum-IDFT of X((k-m)) using property')

subplot(2,2,2)
stem(n,angle(z),'b');
xlabel('n');
ylabel('Angle')
title('Phase spectrum-IDFT of X((k-m)) using property')



subplot(2,2,3)
stem(n,abs(y),'b')
xlabel('n');
ylabel('Magnitude')
title('Magnitude spectrum-IDFT of X((k-m))')

subplot(2,2,4)
stem(n,angle(y),'b');
xlabel('n');
ylabel('Angle')
title('Phase spectrum-IDFT of X((k-m))')
