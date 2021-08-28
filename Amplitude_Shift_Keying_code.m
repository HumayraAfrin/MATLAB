clear all;
close all;
clc;

F1=input('Carrier Frequency ='); %carrier %25
F2=input('Square Pulses frequency ='); %square pulses %5
A=3; %Amplitude
t=0:0.001:1;
x=A.*sin(2*pi*F1*t)+(A/2);
u=A/2.*square(2*pi*F2*t)+(A/2);
v=x.*u;

subplot(3,1,1);
plot(t,x);
title('Carrier Signal');
grid on;

subplot(3,1,2);
plot(t,u);
title('Square Pulses');
grid on;

subplot(3,1,3);
plot(t,v);
title('ASK Signal');
grid on;