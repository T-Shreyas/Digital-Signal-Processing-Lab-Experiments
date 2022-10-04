%%DFT using DIT

x=input('Enter the sequence x(n): ');
n=length(x);
n1=nextpow2(n);
N=2^n1;
i=sqrt(-1);
x=[x zeros(1,N-n)]
y=bitrevorder(x);
disp("Bit reversed input=")
disp(y)
M=log2(N);
for m=1:M
    d=2^m;
    for l=1:d:N-d+1
        for k=0:(d/2)-1
            w=exp(-2*i*pi*k/d);
            z1=y(l+k);
            z2=y(l+k+d/2);
            y(l+k)=z1+w*z2;
            y(l+k+d/2)=z1-w*z2;
        end
    end
end
disp(y)