%%IIT with inbuilt
Ap=input("Enter passband attenuation in dB: ");
As=input("Enter stopband attenuation in dB: ");
wp=input("Enter passband edge frequency in rads: ");
ws=input("Enter stopband edge frequency in rads: ");
F=input("Enter the sampling frequency: ");
Wp=wp*F;
Ws=ws*F;
[N,Wc]=buttord(Wp,Ws,Ap,As,'s');
[b,a]=butter(N,Wc,'s');
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
