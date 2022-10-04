%%dft using DIF
x=input('Enter the sequence x(n): ');
n=length(x);
n1=nextpow2(n);
N=2^n1;
i=sqrt(-1);
n=length(x);
x=[x zeros(1,N-n)];
y=x;
M=log2(N);
for m=M:-1:1
    d=2^m;
    for l=1:d:N-d+1
        for k=0:(d/2)-1
            w=exp(-2*i*pi*k/d);
            z1=y(l+k);
            z2=y(l+k+d/2);
            y(l+k)=z1+z2;
            y(l+k+d/2)=(z1-z2)*w;
        end
    end
end
disp("Bit reversed output:")
disp(y)
xk=bitrevorder(y);
disp("Actual output X(K)=")
disp(xk)