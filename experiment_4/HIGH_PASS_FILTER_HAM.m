clc;clear all;close all;
wc=0.5*pi;
N=11;
e=0.001;
n=-(N-1)/2:1:(N-1)/2;
hd1=(sin(pi*(n+e))-sin(wc*(n+e)))./(pi*(n+e));
wr=boxcar(N);
hm1=hd1.*wr';
w=0:0.01:pi;
disp('Co.efficients of Filter is')
disp(hm1)
h1=freqz(hm1,1,w);
wh=hamming(N);
hm2=hd1.*wh';
h2=freqz(hm2,1,w);
subplot(2,1,1);
plot(w/pi,abs(h2),'-');
grid;
xlabel('non frequency');
ylabel('phase angle');
title('FIR HIGH pass filter magnitude using hamming window');
subplot(2,1,2);
plot(w/pi,angle(h2),'-');
grid;
xlabel('normalised frequency');
ylabel('phase angle');
title('FIR HIGH pass filter phase using hamming window');