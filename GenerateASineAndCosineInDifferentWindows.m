x=0:0.09:6;
y=sin(x);
z=cos(x);

subplot(2,4,1);
plot(x,y,'BLACK');

subplot(2,4,2);
plot(x,y,'RED');

subplot(2,4,3);
plot(x,y,'BLUE');

subplot(2,4,4);
plot(x,y,'GREEN');

subplot(2,4,5);
plot(x,z,'GREEN');

subplot(2,4,6);
plot(x,z,'BLUE');

subplot(2,4,7);
plot(x,z,'RED');

subplot(2,4,8);
plot(x,z,'BLACK');
