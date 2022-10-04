%Idft using built in functions
xk=[10,-2+2j,-2,-2-2j]
xn=fft(xk)
subplot(2,1,1);
title('IDFT-phase spectrum');
hold on;
stem(angle(xn));
subplot(2,1,2);
title('IDFT-phase spectrum');
hold on;
stem(abs(xn));
hold on;
