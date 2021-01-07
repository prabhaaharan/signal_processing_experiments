clc;clear all;close all;

t=0:0.000001:0.0100;
a11=2.*sin(2*pi*t*250);
a12=cos(2*pi*t*500);
a13=sin(2*pi*t*1000);
a=a11+a12+a13;
figure(1)
subplot(2,2,1);
plot(t,a);
xlabel('time');
ylabel('x(t)');
title('analog signal with f 250Hz,500Hz,1000Hz');

b11=2.*sin(2*pi*t*750);
b12=cos(2*pi*t*1000);
b13=sin(2*pi*t*1500);
b=b11+b12+b13;
figure(1)
subplot(2,2,2);
plot(t,b);
xlabel('time');
ylabel('x(t)');
title('analog signal with f 750Hz,1000Hz,1500Hz');

c11=2.*sin(2*pi*t*1250);
c12=cos(2*pi*t*1500);
c13=sin(2*pi*t*2000);
c=c11+c12+c13;
figure(1)
subplot(2,2,3);
plot(t,c);
xlabel('time');
ylabel('x(t)');
title('analog signal with f 1250Hz,1500Hz,2000Hz');



Fs=500;%sampling frequency 500Hz
n=-20:20;
y11=2.*sin(2*pi*n*250/500);%f=fa+kfs =>250+0(500)=250Hz
y12=cos(2*pi*n*500/500);%f=fa+kfs =>500+0(500)=500Hz
y13=sin(2*pi*n*1000/500);%f=fa+kfs =>1000+0(500)=1000Hz
y=y11+y12+y13;
figure(2)
subplot(3,3,1);
stem(n,y,'r');
xlabel('samples');
ylabel('x(n) fa=250Hz,500Hz,1000Hz');
title('k value 0 and fs=500Hz');

z11=2.*sin(2*pi*750*n/500);%f=fa+kfs =>250+1(500)=750Hz
z12=cos(2*pi*1000*n/500);%f=fa+kfs =>500+1(500)=1000Hz
z13=sin(2*pi*1500*n/500);%f=fa+kfs =>1000+1(500)=1500Hz
z=z11+z12+z13;
figure(2)
subplot(3,3,4);
stem(n,z,'m');
xlabel('samples');
ylabel('x(n) fa=750Hz,1000Hz,1500Hz');
title('k value 1 and fs=500Hz');

w11=2.*sin(2*pi*1250*n/500);%f=fa+kfs =>250+2(500)=1250Hz
w12=cos(2*pi*1500*n/500);%f=fa+kfs =>500+2(500)=1500Hz
w13=sin(2*pi*2000*n/500);%f=fa+kfs =>1000+2(500)=2000Hz
w=w11+w12+w13;
figure(2)
subplot(3,3,7);
stem(n,w);
xlabel('samples');
ylabel('x(n) fa=1250Hz,1500Hz,2000Hz');
title('k value 2 and fs=500Hz');

Fs1=10000;%sampling frequency 10000Hz which is 10times greater than fmax
yy11=2.*sin(2*pi*n*250/Fs1);
yy12=cos(2*pi*n*500/Fs1);
yy13=sin(2*pi*n*1000/Fs1);
yy=yy11+yy12+yy13;
figure(2)
subplot(3,3,2);
stem(n,yy,'r');
xlabel('samples');
ylabel('x(n)');
title('fs=10000Hz>10(fmax)');

zz11=2.*sin(2*pi*750*n/Fs1);
zz12=cos(2*pi*1000*n/Fs1);
zz13=sin(2*pi*1500*n/Fs1);
zz=zz11+zz12+zz13;
figure(2)
subplot(3,3,5);
stem(n,zz,'m');
xlabel('samples');
ylabel('x(n)');
title('fs=10000Hz>10(fmax)');

ww11=2.*sin(2*pi*1250*n/Fs1);
ww12=cos(2*pi*1500*n/Fs1);
ww13=sin(2*pi*2000*n/Fs1);
ww=ww11+ww12+ww13;
figure(2)
subplot(3,3,8);
stem(n,ww);
xlabel('samples');
ylabel('x(n)');
title('fs=10000Hz>10(fmax)');

Fs2=2000;%sampling frequency 2000Hz which is equal to fmax
v11=2.*sin(2*pi*n*250/2000);
v12=cos(2*pi*n*500/2000);
v13=sin(2*pi*n*1000/2000);
v=v11+v12+v13;
figure(2)
subplot(3,3,3);
stem(n,v,'r');
xlabel('samples');
ylabel('x(n)');
title('fs=500Hz==fmax');

zzz11=2.*sin(2*pi*750*n/Fs2);
zzz12=cos(2*pi*1000*n/Fs2);
zzz13=sin(2*pi*1500*n/Fs2);
zzz=zzz11+zzz12+zzz13;
figure(2)
subplot(3,3,6);
stem(n,zzz,'m');
xlabel('samples');
ylabel('x(n)');
title('fs=500Hz==fmax');

www11=2.*sin(2*pi*1250*n/Fs2);
www12=cos(2*pi*1500*n/Fs2);
www13=sin(2*pi*2000*n/Fs2);
www=www11+www12+www13;
figure(2)
subplot(3,3,9);
stem(n,www);
xlabel('samples');
ylabel('x(n)');
title('fs=500Hz==fmax');