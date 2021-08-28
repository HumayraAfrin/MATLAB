fm = input('enter the message frequency: ');
fc = input('enter the carrier frequency: ');
A = 1;
t = 0:0.001:1;
m = (A.*square(2*pi*fm*t)+A)/2;
c = sin(2*pi*fc*t);
s = m.*c;
subplot(3,1,1);
plot(t,m);
title('Square Pulses');
grid on;

subplot(3,1,2);
plot(t,c);
title('Carrier Signal');
grid on;

subplot(3,1,3);
plot(t,s);
title('ASK Signal');
grid on;