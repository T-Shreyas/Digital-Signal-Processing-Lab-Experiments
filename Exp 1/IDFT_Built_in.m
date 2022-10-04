%%DTFT using built in function
x=[4,2,0,2];
y=ifft(x);
subplot(2,1,1);
title('Phase spectrum');
hold on;
stem(angle(y));
subplot(2,1,2);
title('Magnitude spectrum');
hold on;
stem(abs(y));
hold on;
