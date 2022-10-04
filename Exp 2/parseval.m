%%Parsevals theorem
xn=input('Enter the sequence: ');
N=length(xn);
Xk=fft(xn)
t=sum(xn.*xn);
Y=abs(Xk);
f=sum(Y.*Y)/N;
disp('Parsevals theorem')
disp('Energy in time domain:')
LHS=t
disp('Energy in frequency domain:')
RHS=f



