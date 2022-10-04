clear all;
X=input('Enter the sequence:');
N=input('Enter the length of the IDFT:');
len=length(X);
if N>len
    X=[X zeros(1,N-len)];
elseif N<len
    X=X(1:N);
end
i=sqrt(-1);
w=exp(-i*2*pi/N);
n=0:(N-1);
k=0:(N-1);
nk=n'*k;
W=w.^(-nk);
x=(X*W)/N;
disp(x);
subplot(211);
stem(k,abs(x));
title('Magnitude Plot');
xlabel('N');
ylabel('Amplitude');
grid on;
subplot(212);
stem(k,angle(x));
title('Phase Plot');
xlabel('N');
ylabel('Phase Angle');
grid on;