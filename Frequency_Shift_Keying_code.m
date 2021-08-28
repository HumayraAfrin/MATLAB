chip_1=32;
total_1=512;
no_symbol=ceil(total_1/chip_1);
symbols=rand(1,no_symbol)-.5;
symbols(find(symbols>=0))=1;
symbols(find(symbols<0))=-1;
signal_1=zeros(1,total_1);
for i=1:chip_1
    signal_1(i:chip_1:end)=symbols;
    subplot(2,1,1)
    plot(signal_1,'r')
    axis([1,total_1,-2,2])
    title('Symbol Stream')
    grid 
end
t=1:total_1;
fc=1/(0.5*chip_1);
f=fc/2*signal_1;
fsk=sin(2*pi*(fc+f).*t);
subplot(2,1,2);
plot(fsk);
axis([1,total_1,-1,1]);
title('FSK');
    