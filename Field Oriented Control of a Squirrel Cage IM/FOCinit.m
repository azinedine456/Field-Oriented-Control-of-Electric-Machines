clear all;
clc;


%% IM Parameters 
P=2;
J=0.006;
f=0.005;
Ls=0.280;
Lr=0.075;
Msr=0.118;
Rs=7.2;
Rr=1.35;
Vmax=230*sqrt(2);
fs=50;


%Additional Parameters
wn = 1410*pi/30;
Tn=750/wn;

%Inverter Parameters
fs=10000;
Ts= 1/fs;
E=700;


%% Current Controller

Ke=1/Rs;
taue=(Ls-(Msr^2)/Lr)/Rs;            
t5e = 1e-4;                         %5% settling time
Kie = 3 / (t5e * Ke);              % Integral gain
Kpe = taue * Kie;                  % Proportional gain
%% Flux Controller

Kf=Msr;
tauf=(Lr)/Rr;            
t5f =100e-3;                         %5% settling time
IP=1; % Using an IP controller instead of PI
if IP
    wn=3/t5f; %   sin(ce wn*T5%=3 for a damping of 0.7 (Check Natural frequency vs. 5% settling nomogram)
    epsilon=0.7;
    Kpf = 2*wn*epsilon*(tauf/Kf) - (1/Kf);
    Kif = ((tauf/(Kf*Kpf))*(wn)^2);
else
    Kif = 3 / (t5f * Kf);              % Integral gain
    Kpf = tauf * Kif;                  % Proportional gain
end
%% Mechanical Controller

Km=1/f;
taum=(J)/f;            
t5m = 500e-3;                         %5% settling time
Kim = 3 / (t5m * Km);              % Integral gain
Kpm = taum * Kim;                  % Proportional gain