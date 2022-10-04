//BUTTERWORTH BLT (without inbuilt)
%Butterworth BLT without inbuilt
Ap=input("Enter passband attenuation in dB: ");
As=input("Enter stopband attenuation in dB: ");
wp=input("Enter passband edge frequency in rads: ");
ws=input("Enter stopband edge frequency in rads: ");
T=input("Enter the time: ");
F=1/T;
Wp=(2/T)*tan(wp/2);
Ws=(2/T)*tan(ws/2);
x=10^(0.1*(-Ap));
y=10^(0.1*(-As));
N=log10((x-1)/(y-1))/(2*log10(Wp/Ws));
N=ceil(N);
disp("Order of thr filter is:")
disp(N)
Wcs=Ws/((y-1)^(1/(2*N)));
Wcp=Wp/((x-1)^(1/(2*N)));
Wc=(Wcs+Wcp)/2;
disp("Cutoff frequency is:");
disp(Wc);
[b,a]=butter(N,Wc,'s');
disp("Numerator co-efficients of H(s) are: ");
disp(b);
disp("Denominator co-efficients of H(s) are: ");
disp(a);
[bz,az]=bilinear(b,a,F);
disp("Numerator co-efficients of H(z) are: ");
disp(bz);
disp("Denominator co-efficients of H(z) are: ");
disp(az);
freqz(bz,az);
