clc;
clear all;
close all;
%unit impulse signal
n=-10:1:10;
N=10;
x=[zeros(1,N),1,zeros(1,N)];
subplot(4,2,1);
stem(n,x);
xlabel('samples');
ylabel('magnitude');
title('unit impulse signal');
%unit ramp signal
n=0:20;
subplot(4,2,2);
stem(n,n);
xlabel('samples');
ylabel('amplitude');
title('unit ramp signal');
%unit step signal
n=-10:1:10;
x=[zeros(1,10),ones(1,11)];
subplot(4,2,3);
stem(n,x);
xlabel('samples');
ylabel('magnitude');
title('unit step signal');

%exponential growing signal
n=-10:1:10;
a=2;
x=a.^(+n);
subplot(4,2,4);
stem(n,x);
xlabel('samples');
ylabel('magnitude');
title('exponential growing signal');
%continuous  x(t)=2e^(-2t)
t=0:0.2:2;
x=2*exp(-2*t);
subplot(4,2,5);
plot(t,x);
xlabel('time');
ylabel('magnitude');
title('question 1');
%discrete x(t)=2e^(-2t)
n=0:1:10;
x=2*exp(-0.4*n);
subplot(4,2,6);
stem(n,x);
xlabel('samples');
ylabel('magnitude');
title('question 1');
%continuous x(t)=sin7t+sin10t continuous
t=0:0.001:2;
x1=sin(7*t);
x2=sin(10*t);
x=x1+x2;
subplot(4,2,7);
plot(t,x);
xlabel('time');
ylabel('magnitude');
title('question 2');


%discrete x(t)=sin7t+sin10t continuous
n=linspace(0,10,50)';
x1=sin(2*pi*(1.114/5)*n);
x2=sin(2*pi*(1.591/5)*n);
x=x1+x2;
subplot(4,2,8);
stem(n,x);
xlabel('samples');
ylabel('magnitude');
title('question 2');
