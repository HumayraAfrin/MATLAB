clear all;
close all;
clc;

A=5;
t=0:0.001:1;
f1=input('Carrier frequency ='); %20
f2=input('Message frequency ='); %5
x=A.*sin(2*pi*f1*t); %Carrier
subplot(3,1,1);
plot(t,x);
title('Carrier');
grid on;

u=square(2*pi*f2*t); %Message signal
subplot(3,1,2);
plot(t,u);
title('Message Signal');
grid on;

v=x.*u;
subplot(3,1,3);
plot(t,v);
title('PSK');
grid on;