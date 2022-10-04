%dft using built in functions
x=[1,2,3,4]
Xk=fft(x)
subplot(2,1,1);
title('DFT-magnitude spectrum');
hold on;
stem(abs(Xk));
subplot(2,1,2);
title('DFT-phase spectrum');
hold on;
stem(angle(Xk));
hold on;
