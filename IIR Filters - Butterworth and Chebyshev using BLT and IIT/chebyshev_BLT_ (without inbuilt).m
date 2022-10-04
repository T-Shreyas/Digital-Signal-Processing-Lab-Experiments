%%chebyshev with BLT
Ap=input('Enter passband ripple in dB: ');
As=input('Enter stopband ripple in dB: ');
wp=input('Enter passband frequency in rads: ');
ws=input('Enter stopband frequency in rads: ');
F=input('Enter sampling frequency: ');
Wp=2*F*tan(wp/2);
Ws=2*F*tan(ws/2);
Wp1=Wp/Wp;
Ws1=Ws/Wp;
e=sqrt((10^(0.1*-Ap))-1);
disp("Ripple factor:")
disp(e)
N=ceil((-As-20*log10(e)+6)/(6+20*log10(Ws1)));
disp("Order of the filter is:")
disp(N)
[b,a]=cheby1(N,-Ap,Wp,'s');
disp('H(s)');
tf(b,a);
disp("Numerator co-efficients of H(s) are: ");
disp(b);
disp("Denominator co-efficients of H(s) are: ");
disp(a);


[bz,az]=bilinear(b,a,F);
disp('H(z)');
disp("Numerator co-efficients of H(z) are: ");
disp(bz);
disp("Denominator co-efficients of H(z) are: ");
disp(az);

freqz(bz,az);

title("Chebyshev Type 1 BLT")
