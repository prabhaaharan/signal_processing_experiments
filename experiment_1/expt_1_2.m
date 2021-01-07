clc;clear all;close all;
%continuous x(t)=sin7t+sin10t continuous
t=0:0.001:2;
x1=sin(7*t);
x2=sin(10*t);
x=x1+x2;
subplot(2,2,3);
plot(t,x);
xlabel('time');
ylabel('magnitude');
title('x(t)=sin7t+sin10t continuous');


%discrete x(t)=sin7t+sin10t continuous
n=linspace(0,10,50)';
x1=sin(2*pi*(1.114/5)*n);
x2=sin(2*pi*(1.591/5)*n);
x=x1+x2;
subplot(2,2,4);
stem(n,x);
xlabel('samples');
ylabel('magnitude');
title('x(t)=sin7t+sin10t discrete');

t=0:0.01:2;
y=(-2*t);
x=2*exp(y);
figure(1)
subplot(2,2,1);
plot(t,x);
xlabel('time');
ylabel('magnitude');
title('x(t)=2e^(-2t) continuous');

n=linspace(0,10,50);
y=(-2*0.2*n);
x=2*exp(y);
figure(1)
subplot(2,2,2);
stem(n,x);
xlabel('time');
ylabel('samples');
title('x(t)=2e^(-2t) discrete');
