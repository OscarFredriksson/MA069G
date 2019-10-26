clear;
clc;

format long;

P = [0.8 0.15 0.05; 0.10 0.75 0.15; 0.25 0.25 0.5];

%s_0 = [0.8 0.15 0.05];
s_0 = [0 0 1];

s = s_0;

tol = 0.0001;

err = 1;

iter = 0;

while(err > tol)
   s_0 = s;
   s = s_0*P;
   err = max(abs(s - s_0));
   iter = iter + 1;
end

x =  s * (P-eye(3));

%Svar: Vid toleransnivå 0.01% tar det 18 iterationer att nå den stationära
%lösningen [0.417, 0.417, 0.167] (bull, bear, recession)

%Med startvektorn [0 0 1] nås toleransnivån på 11 iterationer