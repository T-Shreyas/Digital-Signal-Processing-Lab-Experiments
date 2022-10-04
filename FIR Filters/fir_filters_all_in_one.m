Fs=8000;  %Specify Sampling Frequency
Ts=1/Fs; %Sampling period.
Ns=1024;  %Nr of time samples to be plotted.
t=[0:Ts:Ts*(Ns-1)];  %Make time array that contains Ns elements
                    
f1=500;
f2=1500;
f3=2000;
f4=3000;
x1=sin(2*pi*f1*t);
x2=sin(2*pi*f2*t);
x3=sin(2*pi*f3*t);
x4=sin(2*pi*f4*t);
x=x1+x2+x3+x4;     
disp('Please specify the filter type'); 
FilterType={'low','high','bandpass','stop'};
disp('Here is the filter option:');
disp('1:    Low Pass Filter ');
disp('2:    High Pass Filter');
disp('3:    Band Pass Filter');
disp('4:    Band Stop Filter');

FilterOption=input('FilterOption=');
 
userFilterType=FilterType{FilterOption};
FilterOrder=input('FilterOrder=');
str=sprintf('Here is all the frequency infromation in this experiment:Fs=%d;    f1=%d;  f2=%d;  f3=%d;  f4=%d;',Fs,f1,f2,f3,f4);
disp(str);
if FilterOption==1
        disp('Enter the Edge Freq. in rad. Note: the value should be within 0~Fs');W=input('omega=');
elseif FilterOption==2
        disp('Enter the Edge Freq. in rad. Note: the value should be within 0~Fs');W=input('omega=');
elseif FilterOption==3
        disp('Enter the Edge Freq. in rad. Note: the value should be within 0~Fs');W=input('omega cutoff1=');W2=input('omega cutoff2=');        W=[W W2];
elseif FilterOption==4
        disp('Enter the Edge Freq. in rad. Note: the value should be within 0~Fs');W=input('omega cutoff1=');W2=input('omega cutoff2=');        W=[W W2];
end
  
  
N=FilterOrder;

Window_Option={'hamming','kaiser','rectwin','hanning'};
disp('Choose Windowing option:');
disp('1:    hamming');
disp('2:    kaiser');
disp('3:    rectwin');
disp('4:    hanning')
WindowOption=input('WindowOption=');

%WindowOption='rectwin';
switch Window_Option{WindowOption}
    case 'hamming'        
        userWindow=hamming(N+1);
    case 'kaiser'
        userWindow=kaiser(N+1);
    case 'rectwin'
        userWindow=rectwin(N+1);
    case 'hanning'
        userWindow=hanning(N+1);
end

B=fir1(N,W,userFilterType,userWindow); 
A=1;            %FIR filters have no poles, only zeros.
figure;
disp('The obtained filter design values are');
disp(B);
zerophase(B,A); % plot zero phase figure
disp('Checking the Zero-Phase Response of the designed filter, enter any key to continue');
pause;
figure;       %Create a new figure window, so previous one isn't lost.
freqz(B,A);		 %Plot frequency response - both amp and phase response.
disp('Checking the Freq. Response of the designed filter, enter any key to continue');
pause;
figure;
subplot(2,1,1); %Two subplots will go on this figure window.
Npts=200;
plot(t(1:Npts),x(1:Npts)) %Plot first Npts of this 4-tone input signal
title('Time Plots of Input and Output');
xlabel('time (s)');
ylabel('Input Sig');
   %Now apply this filter to our 4-tone test sequence
y = filter(B,A,x);
subplot(2,1,2);  %Now go to bottom subplot.
plot(t(1:Npts),y(1:Npts)); %Plot first Npts of filtered signal.    
xlabel('time (s)');
ylabel('Filtered Sig');
disp('Checking the Filtering Effect of the designed filter in time domain, enter any key to continue');
pause;
figure;  %Create a new figure window, so previous one isn't lost.
subplot(2,1,1);
xfftmag=(abs(fft(x,Ns)));   %Compute spectrum of input signal.
xfftmagh=xfftmag(1:length(xfftmag)/2);
  
f=[1:1:length(xfftmagh)]*Fs/Ns;   %Make freq array that varies from 
                                  %0 Hz to Fs/2 Hz.
plot(f,xfftmagh);		%Plot frequency spectrum of input signal
title('Input and Output Spectra');
xlabel('freq (Hz)');
ylabel('Input Spectrum');
subplot(2,1,2);
yfftmag=(abs(fft(y,Ns)));
yfftmagh=yfftmag(1:length(yfftmag)/2);
  
plot(f,yfftmagh);		%Plot frequency spectrum of input signal
xlabel('freq (Hz)');
ylabel('Filtered Signal Spectrum');
