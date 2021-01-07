clc;clear all;close all;
t=0:0.001:0.01;

A1=sin(2*pi*100*t);%analog frequency 100Hz
figure(1)
subplot(2,2,1);
plot(t,A1);
xlabel('time');
ylabel('x(t)');
title('analog signal with f=100Hz');

A2=sin(2*pi*250*t);%analog frequency 250Hz
figure(1)
subplot(2,2,2);
plot(t,A2);
xlabel('time');
ylabel('x(t)');
title('analog signal with f=250Hz');

A3=sin(2*pi*400*t);%analog frequency 400Hz
figure(1)
subplot(2,2,3);
plot(t,A3);
xlabel('time');
ylabel('x(t)');
title('analog signal with f=400Hz');

A4=sin(2*pi*550*t);%analog frequency 555Hz
figure(1)
subplot(2,2,4);
plot(t,A4);
xlabel('time');
ylabel('x(t)');
title('analog signal with f=550Hz');

Fs=150;%sampling frequency 150Hz < 2(Fa)
n=-20:20;
x1=sin(2*pi*n*100/Fs);%f=fa+k fs here k=1 so f=100+0(150)=>100Hz
figure(2)
subplot(4,3,1);
stem(n,x1);
xlabel('samples');
ylabel('x(n)');
title('fa=100Hz and fs=150Hz');
hold on;

x2=sin(2*pi*n*250/Fs);%f=fa+k fs here k=1 so f=100+1(150)=>250Hz
figure(2)
subplot(4,3,4);
stem(n,x2,'m');
xlabel('samples');
ylabel('x(n)');
title('fa=250Hz and fs=150Hz');
hold on;

x3=sin(2*pi*n*400/Fs);%f=fa+k fs here k=1 so f=100+2(150)=>400Hz
figure(2)
subplot(4,3,7);
stem(n,x3,'r');
xlabel('samples');
ylabel('x(n)');
title('fa=400Hz and fs=150Hz');
hold on;

x4=sin(2*pi*n*550/Fs);%f=fa+k fs here k=1 so f=100+3(150)=>550Hz
figure(2)
subplot(4,3,10);
stem(n,x4,'k');
xlabel('samples');
ylabel('x(n)');
title('fa=550Hz and fs=150Hz');

Fs2=3000;%sampling frequency is 1000hz which is 10 times greater than original frequency
x5=sin(2*pi*n*100/Fs2);
figure(2)
subplot(4,3,2);
stem(n,x5);
xlabel('samples');
ylabel('x(n)');
title('fa=150Hz and fs=3000Hz');

x6=sin(2*pi*n*250/Fs2);
figure(2)
subplot(4,3,5);
stem(n,x6,'m');
xlabel('samples');
ylabel('x(n)');
title('fa=250Hz and fs=3000Hz');

x7=sin(2*pi*n*400/Fs2);
figure(2)
subplot(4,3,8);
stem(n,x7,'r');
xlabel('samples');
ylabel('x(n)');
title('fa=400Hz and fs=3000Hz');

x8=sin(2*pi*n*550/Fs2);
figure(2)
subplot(4,3,11);
stem(n,x8,'k');
xlabel('samples');
ylabel('x(n)');
title('fa=550Hz and fs=3000Hz');

Fs3=1200;%sampling frequency is 1000hz which is equal to original frequency
x9=sin(2*pi*n*100/Fs3);
figure(2)
subplot(4,3,3);
stem(n,x9);
xlabel('samples');
ylabel('x(n)');
title('fa=150Hz and (fs=1200Hz)');

x10=sin(2*pi*n*250/Fs3);
figure(2)
subplot(4,3,6);
stem(n,x10,'m');
xlabel('samples');
ylabel('x(n)');
title('fa=250Hz and(fs=1200)');

x11=sin(2*pi*n*400/Fs3);
figure(2)
subplot(4,3,9);
stem(n,x11,'r');
xlabel('samples');
ylabel('x(n)');
title('fa=400Hz and (fs=1200Hz)');

x12=sin(2*pi*n*550/Fs3);
figure(2)
subplot(4,3,12);
stem(n,x12,'k');
xlabel('samples');
ylabel('x(n)');
title('fa=550Hz and(fs=1200Hz)');
