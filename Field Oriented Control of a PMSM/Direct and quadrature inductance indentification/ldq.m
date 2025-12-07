clear all
clc
load('SDS00004.DAT');
load('SDS00005.DAT');


% plot(SDS00004(1:end,1),SDS00004(1:end,2));
plot(SDS00005(1:end,1),SDS00005(1:end,2));


% 
% indexd=find(SDS00004(1:end,1)>=-0.3428 & SDS00004(1:end,1)<=0.4514 );
% indexq=find(SDS00004(1:end,1)<=-0.5);

indexd2=find(SDS00005(1:end,1)>=-0.8888 & SDS00005(1:end,1)<=-0.0586 );
indexq2=find(SDS00005(1:end,1)>=-0.0586 & SDS00005(1:end,1)<=0.1962 );

% hold on;
%  plot(SDS00004(indexd,1),SDS00004(indexd,2))
%  plot(SDS00004(indexq,1),SDS00004(indexq,2))
%  hold off;


 hold on;
 plot(SDS00005(indexd2,1),SDS00005(indexd2,2))
 
 plot(SDS00005(indexq2,1),SDS00005(indexq2,2))
 hold off;


