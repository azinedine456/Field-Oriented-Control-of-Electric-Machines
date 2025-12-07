x=0:0.001:100

y=30*sin(2*pi*50*x)


figure;
plot(x,((y)));

figure;
N=1000;
fs=10*10.^3;
f=fs*(0: N/2-1)/N
FT=(fft(y));
FT1=FT(1:N/2);
FTM=abs(FT1)/(N/2)
plot(f,FTM)