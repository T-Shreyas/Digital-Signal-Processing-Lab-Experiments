%% IDFT USING DIT
x=input('Enter the sequence X(k): ');
N=length(x);
x=conj(x);
n1=nextpow2(N);
n=2^n1;
i=sqrt(-1);
xk=[x zeros(1,n-N)]
y=bitrevorder(xk);
M=log2(n);
for m=1:M
    d=2^m;
    for l=1:d:n-d+1
        for k=0:(d/2)-1
            w=exp(-2*i*pi*k/d);
            z1=y(l+k);
            z2=y(l+k+d/2);
            y(l+k)=z1+w*z2;
            y(l+k+d/2)=z1-w*z2;
        end
    end
end
xn=conj(y)/n;
disp("x(n)=")
disp(xn)
