clc;
clear all;
%questionA
n=-10:1:10;
close all;
a=[zeros(1,10),1,ones(1,10)];
energy1=sum(abs(a).^2);
power1=energy1/length(a);
disp 'power of u(n)';
disp(power1);
disp 'energy of u(n)';
disp(energy1);
subplot(3,2,1);
plot(n,a);
hold on;

%questionB
n=-10:1:10;
b1=pi*n/2;
b2=pi/4;
b3=1i.*(b1+b2);
b=exp(b3);
energy2=sum(abs(b).^2);
power2=energy2/length(b);
disp 'power of 2nd signal';
disp(power2);
disp 'energy of 2nd signal';
disp(energy2);
subplot(3,2,2);
plot(n,b);

hold on;

%questionC
n=-10:1:10;
c1=3.^n;
c2=pi*n/4;
c3=1i*c2;
c4=exp(c3);
c=c1.*c4;
energy3=sum(abs(c).^2);
power3=energy1/length(c);
disp 'power of 3rd signal';
disp(power3);
disp 'energy of 3rd signal';
disp(energy3);
subplot(3,2,3);
plot(n,c);
hold on;

%questionD
n=-10:1:10;
d=0.7.^n;
energy4=sum(abs(d).^2);
power4=energy1/length(d);
disp 'power of 4th signal';
disp(power4);
disp 'energy of 4th signal';
disp(energy4);
subplot(3,2,4);
plot(n,d);
hold on;

%questionE

e1=[zeros(1,10),1,ones(1,10)];
e2=0.2.^n;
e=e1.*e2;
energy5=sum(abs(e).^2);
power5=energy1/length(e);
disp 'power of 5th signal';
disp(power5);
disp 'energy of 5th signal';
disp(energy5);
subplot(3,2,5);
plot(n,e);
hold on;

%questionF
n=-10:1:10;
f1=pi*n/2;
f=cos(f1);
energy6=sum(abs(f).^2);
power6=energy1/length(f);
disp 'power of 6th signal';
disp(power6);
disp 'energy of 6th signal';
disp(energy6);
subplot(3,2,6);
plot(n,f);
hold on;

