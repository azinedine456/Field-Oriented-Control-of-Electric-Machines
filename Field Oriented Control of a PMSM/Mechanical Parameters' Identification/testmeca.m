clear all;
clc;
% 
% load("C:\Users\ZinouAb\Desktop\Parameter Identification TEER MEER\Matlab.DAT") %fem
% load("SDS00001.DAT"); %fem
% 
% figure;
% plot(Matlab(1:end,1),Matlab(1:end,2))
% figure;
% plot(SDS00001(1:end,1),SDS00001(1:end,2))

load("SDS00003.DAT"); %Test mécanique

% hold on;
% title('Test de laché')
% xlabel('temps (s)')
% ylabel('vitesse rd/s ')
% plot(1.35+SDS00003(1:end,1),SDS00003(1:end,2)*100*2*pi/60)
% hold off;


figure;
hold on;
title('Test de laché')
xlabel('temps (s)')
ylabel('vitesse rd/s) ')
plot(1.292+SDS00003(301:9261,1),SDS00003(301:9261,2)*100*2*pi/60)

% taxis=1.292+SDS00003(415:9261,1);
% speed_rds=SDS00003(415:9261,2);
% om0=157.0796;
% c0=3.53*10.^-1;
% j=5.21*10.^-3;
% f=1.57*10.^-3;
% fcn=((om0)+(c0/f))*exp(-f*(taxis)/j)-(c0/f);
% plot(taxis,fcn);
% 
% 
% 
hold off;