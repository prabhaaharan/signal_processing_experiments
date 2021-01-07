clc;
clear all;
close all;
t=0:0.01:0.2;
y=(-2*t);
x=2*exp(y);
figure(1)
subplot(2,1,1);
plot(t,x);
xlabel('time');
ylabel('magnitude');
title('x(t)=2e^(-2t) continuous');

n=0:0.2:2;
y=(-2*0.2*n);
x=2*exp(y);
figure(1)
subplot(2,1,2);
stem(n,x);
xlabel('time');
ylabel('samples');
title('x(t)=2e^(-2t) discrete');

t=0:0.2:2;
x=sin(7*t)+sin(10*t);
subplot(2,1,1);
figure(2)
plot(t,x);
xlabel('time');
ylabel('magnitude');
title('x(t)=sin7t+sin10t continuous');

n=0:2:20;
x=sin(7*n)+sin(10*n);
subplot(2,1,2);
figure(2)
stem(n,x);
xlabel('time');
ylabel('samples');
title('x(t)=sin7t+sin10t discrete');

