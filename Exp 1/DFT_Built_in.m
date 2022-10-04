%%DTFT using built in function
x=[0,1,2,1];
y=fft(x);
subplot(2,1,1);
title('Magnitude spectrum');
hold on;
stem(abs(y));
subplot(2,1,2);
title('Phase spectrum');
hold on;
stem(angle(y));
hold on;
