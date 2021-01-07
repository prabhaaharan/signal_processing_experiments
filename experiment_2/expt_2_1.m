clc;
clear all;
close all;
%questionA
n=-10:1:10;
t=0:0.001:2;
a=[zeros(1,10),1,ones(1,10)];
e1=sum(abs(a).^2);
p1=e1/length(a);
disp 'power of signal 1';
disp(p1);
disp 'energy of signal 1';
disp(e1);
figure(1)
subplot(3,3,1);
stem(n,a);
xlabel('samples');
ylabel('x(n)');
title('original signal');
figure(1)
subplot(3,3,2);
plot(t,e1);
xlabel('time');
ylabel('amplitude');
title('Energy of signal 1');
figure(1)
subplot(3,3,3);
plot(t,p1);
xlabel('time');
ylabel('amplitude');
title('Power of signal 1');
hold on;

%questionB
n=-20:1:20;%when samples gets increased the energy also gets increased
t=0:0.001:2;
b1=pi*n/6;
b2=pi/4;
b3=1i.*(b1+b2);
b=exp(b3);
e2=sum(abs(b).^2);
p2=e2/length(b);
disp 'power of 2nd signal';
disp(p2);
disp 'energy of 2nd signal';
disp(e2);
figure(1)
subplot(3,3,4);
stem(n,b);
xlabel('samples');
ylabel('x(n)');
title('original signal');
figure(1)
subplot(3,3,5);
plot(t,e2);
xlabel('time');
ylabel('amplitude');
title('Energy of signal 2');
figure(1)
subplot(3,3,6);
plot(t,p2);
xlabel('time');
ylabel('amplitude');
title('Power of signal 2');
hold on;

%questionC
n=-20:1:20;
t=0:0.001:2;
c1=3.^n;
c2=pi*n/4;
c3=1i*c2;
c4=exp(c3);
c=c1.*c4;
e3=sum(abs(c).^2);
p3=e3/length(c);
disp 'power of 3rd signal';
disp(p3);
disp 'energy of 3rd signal';
disp(e3);
figure(1)
subplot(3,3,7);
stem(n,c);
xlabel('samples');
ylabel('x(n)');
title('original signal');
figure(1)
subplot(3,3,8);
plot(t,e3);
xlabel('time');
ylabel('amplitude');
title('Energy of signal 3');
figure(1)
subplot(3,3,9);
plot(t,p3);
xlabel('time');
ylabel('amplitude');
title('Power of signal 3');
hold on;

%questionD
n=-20:1:20;%enegry tends to increase when samples get increased
t=0:0.001:2;
d=0.7.^n;
e4=sum(abs(d).^2);
p4=e4/length(d);
disp 'power of 4th signal';
disp(p4);
disp 'energy of 4th signal';
disp(e4);
figure(2)
subplot(3,3,1);
stem(n,d);
xlabel('samples');
ylabel('x(n)');
title('original signal');
figure(2)
subplot(3,3,2);
plot(t,e4);
xlabel('time');
ylabel('amplitude');
title('Energy of signal 4');
figure(2)
subplot(3,3,3);
plot(t,p4);
xlabel('time');
ylabel('amplitude');
title('Power of signal 4');
hold on;

%questionE
n=0:1:20;%because of u(n)
t=0:0.001:2;
e1=1.^n;%u(n)
e2=0.2.^n;
q5=e2.*e1;
e5=sum(abs(q5).^2);
p5=e5/length(q5);
disp 'power of 5th signal';
disp(p5);
disp 'energy of 5th signal';
disp(e5);
figure(2)
subplot(3,3,4);
stem(n,q5);
xlabel('samples');
ylabel('x(n)');
title('original signal');
figure(2)
subplot(3,3,5);
plot(n,e5);
xlabel('time');
ylabel('amplitude');
title('Energy of signal 5');
figure(2)
subplot(3,3,6);
plot(t,p5);
xlabel('time');
ylabel('amplitude');
title('Power of signal 5');
hold on;

%questionF
n=-20:1:200000;
t=0:0.001:2;
f1=pi*n/2;
f=cos(f1);
e6=sum(abs(f).^2);
p6=e6/length(f);
disp 'power of 6th signal';
disp(p6);
disp 'energy of 6th signal';
disp(e6);
figure(2)
subplot(3,3,7)
stem(n,f);
xlabel('samples');
ylabel('x(n)');
title('original signal');
figure(2)
subplot(3,3,8);
plot(t,e6);
xlabel('time');
ylabel('amplitude');
title('Energy of signal 6');
figure(2)
subplot(3,3,9);
plot(t,p6);
xlabel('time');
ylabel('amplitude');
title('Power of signal 6');
hold on;

