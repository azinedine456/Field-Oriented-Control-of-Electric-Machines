clc;
clear;
Rs=27.9;
Ld=0.3;
Lq=0.23;
J=5.21*10.^-3;
F=1.57*10.^-3;
C0=3.53*10.^-1;
P=2; 
pf=1.12;
R=[Rs 0; 0 Rs ];
L=[Ld 0 ; 0 Lq ];
A=[0 -Lq  ; Ld 0 ];
phif=[0 ; pf];


VDC=600; 
fd=1*10^3;
Td=1/fd;
VP=VDC;

t5m=0.2;
t5e=2*10.^-3;

ceff=1;

wnm=5/t5m;
wne=5/t5e;

Kpm=2*wnm*J*ceff-F
Kim=J*((wnm).^2)/Kpm

Kpd=2*wne*Ld*ceff-Rs
Kid=Ld*((wne).^2)/Kpd

Kpq=2*wne*Lq*ceff-Rs
Kiq=Lq*((wne).^2)/Kpq
