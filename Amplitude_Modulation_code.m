clc;
close all;
clear all;

m=1;

Am=5; %Amp. of modulating signal
fa=input('Message frequency ='); %frequency of modulating signal
fc=input('Carrier frequency ='); 

t=0:.001:1;
ym=Am*sin(2*pi*fa*t);
figure(1)
subplot(3,1,1);
plot(t,ym)
title('Modulating Signal');

%carrier signal
Ac=Am/m;
yc=Ac*sin(2*pi*fc*t);
subplot(3,1,2);
plot(t,yc);
grid on;
title('Carrier Signal');

%AM Modulation
y=Ac+(1+m*sin(2*pi*fa*t)).*sin(2*pi*fc*t);
subplot(3,1,3);
plot(t,y);
title('Amplitude Modulated Signal');
grid on;