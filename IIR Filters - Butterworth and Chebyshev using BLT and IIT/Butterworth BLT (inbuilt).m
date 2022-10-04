BUTTERWORTH BLT (with inbuilt)
%%Butterworth using BLT
Ap=input("Enter passband attenuation in dB: ");
As=input("Enter stopband attenuation in dB: ");
wp=input("Enter passband edge frequency in rads: ");
ws=input("Enter stopband edge frequency in rads: ");
F=input("Enter the sampling frequency: ");
Wp=2*F*tan(wp/2);
Ws=2*F*tan(ws/2);
[N,Wc]=buttord(Wp,Ws,Ap,As,'s');
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
