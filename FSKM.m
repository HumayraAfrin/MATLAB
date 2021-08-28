f1 = input('Enter the carrier 1 frequency : ');
f2 = input('Enter the carrier 2 frequency : ');
f3 = input('Enter the message frequency : ');
t = 0:0.001:1;
m = (square(2*pi*f3*t)+1)/2;
 c1 = sin(2*pi*f1*t);
 c2 = sin(2*pi*f2*t);
 for i=0:1000
     if(m(i+1)==1)
         s(i+1) = c1(i+1);
     else
         s(i+1)=c2(i+1);
     end
 end
 subplot(4,1,1);
 plot(t,m);
 title('Square Pulses');
 grid on;
 
 subplot(4,1,2);
 plot(t,c1);
 title('Carrier Signal 1');
 grid on;
 
 subplot(4,1,3);
 plot(t,c2);
 title('Carrier Signal 2');
 grid on;
 
 subplot(4,1,4);
 plot(t,s);
 title('FSK Signal');
 grid on;
 