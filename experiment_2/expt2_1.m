clc;
clear all;
close all;
%questionA
t=0:0.001:2;
a=[zeros(1,10),1,ones(1,10)];
energy1=sum(abs(a).^2);
power1=energy1/length(a);
disp 'power of u(n)';
disp(power1);
disp 'energy of u(n)';
disp(energy1);
subplot(6,2,1);
plot(t,power1);
subplot(6,2,2);
plot()
hold on;

%questionB
b1=pi*n/2;
b2=pi/4;
b3=1i.*(b1+b2);
b=exp(b3);
power2=norm(b).^2/length(b);
energy2=sum(abs(b).^2);
powerr2=energy2/length(b);
disp 'power of 2nd signal';
disp(power2);
disp 'energy of 2nd signal';
disp(energy2);
disp 'power of 2nd signal';
disp(powerr2);
subplot(6,2,2);
plot(t,power2)
hold on;

%questionC
c1=3.^t;
c2=pi*t/4;
c3=1i*c2;
c4=exp(c3);
c=c1.*c4;
power3=norm(c).^2/length(c);
energy3=sum(abs(c).^2);
disp 'power of 3rd signal';
disp(power3);
disp 'energy of 3rd signal';
disp(energy3);
subplot(6,2,3);
plot(t,power3);
hold on;

%questionD
d=0.7.^t;
power4=norm(d).^2/length(d);
energy4=sum(abs(d).^2);
disp 'power of 4th signal';
disp(power4);
disp 'energy of 4th signal';
disp(energy4);
subplot(6,2,4);
plot(t,power4);
hold on;

%questionE
n=0:20;
e1=[zeros(1,10),1,ones(1,10)];
e2=0.2.^n;
e=e1.*e2;
power5=norm(e).^2/length(e);
energy5=sum(abs(e).^2);
disp 'power of 5th signal';
disp(power5);
disp 'energy of 5th signal';
disp(energy5);
subplot(6,2,5);
plot(t,power5);
hold on;

%questionF
f1=pi*n/2;
f=cos(f1);
power6=norm(f).^2/length(f);
energy6=sum(abs(f).^2);
disp 'power of 6th signal';
disp(power6);
disp 'energy of 6th signal';
disp(energy6);
subplot(6,2,6);
hold on;

