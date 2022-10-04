clc;
%%decleration of parameters for sampling theorem
f1=200;
f2=400;
fmax=max(f1,f2);
T=1/min(f1,f2);
t=0:0.01*T:4*T;
%%ploting the original signal
X=2*sin(2*pi*f1*t)+3*sin(2*pi*f2*t);
subplot(2,2,1);
plot(t,X);
title('Continuous signal');
xlabel('t');
ylabel('X(t)');
%%ploting under sampling
fs1=1.6*fmax;
n1=0:1/fs1:2*T;
X1=2*sin(2*pi*f1*n1)+3*sin(2*pi*f2*n1);
subplot(2,2,2);
stem(n1,X1);
hold on;
plot(n1,X1,'r');
plot(t,X,'y');
title('Under sampled signal');
xlabel('n');
ylabel('X[n]');
%%ploting the exact sampling 
fs2=2*fmax;
n2=0:1/fs2:2*T;
X2=2*sin(2*pi*f1*n2)+3*sin(2*pi*f2*n2);
subplot(2,2,3);
stem(n2,X2);
hold on;
plot(n2,X2,'g');
plot(t,X,'r');
title('exact sampled signal');
xlabel('n');
ylabel('X[n]');
%%ploting the over sampling 
fs3=8*fmax;
n3=0:1/fs3:2*T;
X3=2*sin(2*pi*f1*n3)+3*sin(2*pi*f2*n3);
subplot(2,2,4);
stem(n3,X3);
hold on;
plot(n3,X3,'y');
plot(t,X,'r');
title('Over sampled signal');
xlabel('n');
ylabel('X[n]');


