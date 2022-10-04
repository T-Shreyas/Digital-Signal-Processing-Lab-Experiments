Ap=input('Enter passband ripple in dB: ');
As=input('Enter stopband ripple in dB: ');
wp=input('Enter passband frequency in rads: ');
ws=input('Enter stopband frequency in rads: ');
F=input('Enter sampling frequency: ');
Wp=2*F*tan(wp/2);
Ws=2*F*tan(ws/2);
Wp1=Wp/Wp;
Ws1=Ws/Wp;
[N,Wc]=cheb1ord(Wp1,Ws1,Ap,As,'s');
disp("Order of the filter is:")
disp(N)
[b,a]=cheby1(N,-Ap,Wp,'s');

tf(b,a);
disp("Numerator co-efficients of H(s) are: ");
disp(b);
disp("Denominator co-efficients of H(s) are: ");
disp(a);
[bz,az]=impinvar(b,a,F);

disp("Numerator co-efficients of H(z) are: ");
disp(bz);
disp("Denominator co-efficients of H(z) are: ");
disp(az);

freqz(bz,az);

title("Chebyshev Type 1 IIT(with builtin function)")