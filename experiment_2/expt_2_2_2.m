clc;clear all;close all;
fa=60;

t=0:0.001:0.05;
a1=cos(2*pi*t*60);%analog frequency 60Hz
figure(1)
subplot(2,2,1);
plot(t,a1);
xlabel('time');
ylabel('x(t)');
title('analog signal with f=60');

a2=cos(2*pi*t*160);%analog frequency 160Hz
figure(1)
subplot(2,2,2);
plot(t,a2);
xlabel('time');
ylabel('x(t)');
title('analog signal with f=160');

a3=cos(2*pi*t*260);%analog frequency 260Hz
figure(1)
subplot(2,2,3);
plot(t,a3);
xlabel('time');
ylabel('x(t)');
title('analog signal with f=260');

a4=cos(2*pi*t*360);%analog frequency 360Hz
figure(1)
subplot(2,2,4);
plot(t,a4);
xlabel('time');
ylabel('x(t)');
title('analog signal with f=360');

Fs=100;%sampling frequency Fs=100hz<2(Fa)
n=-20:20;
x1=cos(2*pi*n*60/Fs);%f=fa+k fs here k=0 so f=60+0(100)=>60Hz
figure(2)
subplot(4,3,1);
stem(n,x1,'m');
xlabel('samples');
ylabel('x(n)');
title(' fa=60 and fs=100Hz');

x2=cos(2*pi*n*160/Fs);%f=fa+k fs here k=1 so f=60+1(100)=>160Hz
figure(2)
subplot(4,3,4);
stem(n,x2,'r');
xlabel('samples');
ylabel('x(n)');
title('fa=160 and fs=100Hz');

x3=cos(2*pi*n*260/Fs);%f=fa+k fs here k=2 so f=60+2(100)=>260Hz
figure(2)
subplot(4,3,7);
stem(n,x3,'k');
xlabel('samples');
ylabel('x(n)');
title('fa=260 and fs=100Hz');

x4=cos(2*pi*n*360/Fs);%f=fa+k fs here k=3 so f=60+3(100)=>360Hz
figure(2)
subplot(4,3,10);
stem(n,x4);
xlabel('samples');
ylabel('x(n)');
title('fa=360 and fs=100Hz');

Fs1=1200;%sampling frequency=600Hz
x5=cos(2*pi*n*60/Fs1);
figure(2)
subplot(4,3,2);
stem(n,x5,'m');
xlabel('samples');
ylabel('x(n)');
title('fa=60 and fs=1200Hz');

x6=cos(2*pi*n*160/Fs1);
figure(2)
subplot(4,3,5);
stem(n,x6,'r');
xlabel('samples');
ylabel('x(n)');
title('fa=160 and fs=1200Hz');

x7=cos(2*pi*n*260/Fs1);
figure(2)
subplot(4,3,8);
stem(n,x7,'k');
xlabel('samples');
ylabel('x(n)');
title('fa=260 and fs=1200Hz');

x8=cos(2*pi*n*360/Fs1);
figure(2)
subplot(4,3,11);
stem(n,x8);
xlabel('samples');
ylabel('x(n)');
title('fa=360 and fs=1200Hz');

Fs2=800;%sampling frequency=120Hz
x10=cos(2*pi*n*60/Fs2);
figure(2)
subplot(4,3,3);
stem(n,x10,'m');
xlabel('samples');
ylabel('x(n)');
title('fa=60 and fs=800Hz');

x11=cos(2*pi*n*160/Fs2);%f=fa+k fs here k=1 so f=60+1(100)=>160Hz
figure(2)
subplot(4,3,6);
stem(n,x11,'r');
xlabel('samples');
ylabel('x(n)');
title('fa=160 and fs=800Hz');

x12=cos(2*pi*n*260/Fs2);
figure(2)
subplot(4,3,9);
stem(n,x12,'k');
xlabel('samples');
ylabel('x(n)');
title('fa=260 and  fs=800Hz');

x13=cos(2*pi*n*360/Fs2);
figure(2)
subplot(4,3,12);
stem(n,x13);
xlabel('samples');
ylabel('x(n)');
title('fa=360 and fs=800Hz');
