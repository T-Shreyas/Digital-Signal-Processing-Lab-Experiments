%%time reversal
%X(N-k)=X(-k)
x=[1 2 1 0];
k=0:3;
N=4;
i=sqrt(-1);
n=0:3;
l=-3:1:3;
w=exp(-2*pi*i/N);
wn=n'*(k);
wnnk=w.^wn
yk=x*wnnk

wl=exp(-2*pi*i/N);
wnl=n'*l;
wnnl=wl.^wnl
xk=x*wnnl

subplot(2,2,1)
stem(n,abs(yk));
xlabel('k')
ylabel('Magnitude')
title('Magnitude spectrum of X(k)')

subplot(2,2,2)
stem(n,angle(yk));
xlabel('k')
ylabel('Angle')
title('Phase spectrum of X(k)')

subplot(2,2,3)
stem(l,abs(xk));
xlabel('k')
ylabel('Magnitude')
title('Magnitude spectrum of X(k):(Time reversal)')

subplot(2,2,4)
stem(l,angle(xk));
xlabel('k')
ylabel('Angle')
title('Phase spectrum of X(k):(Time reversal)')