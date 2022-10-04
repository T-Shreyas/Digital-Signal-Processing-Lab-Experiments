x=input('enter the sequence');
p=nextpow2(length(x));
x=[x zeros(1,((2^p)-length(x)))];
N=length(x);
s=log2(N);
half=1;
x=bitrevorder(x);
for stage=1:s
    for index=0:(2^stage):(N-1)
        for n=0:(half-1)
            pos=n+index+1;
            pow=(2^(s-stage))*n;
            w=exp(-1i*2*pi*pow/N);
            a=x(pos)+x(pos+half).*w;
            b=x(pos)-x(pos+half).*w;
            x(pos)=a;
            x(pos+half)=b;
        end
    end
    half=2*half;
end
y=x;
fprintf('The dft(using dit) fft of the sequence is:');
disp(y)