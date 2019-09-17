format long;

clc;
clear;

x0 = 7;

h1 = 0.04;
h2 = 0.02;
h3 = 0.01;

%Ber�kna f�r alla tre h v�rden
D1_h1 = D1(x0, h1)
D1_h2 = D1(x0, h2)
D1_h3 = D1(x0, h3)

D2_h1 = D2(x0, h1)
D2_h2 = D2(x0, h2)
D2_h3 = D2(x0, h3)

function ret = D1(x, h) %Funktion f�r att ber�kna fram�tdifferansen
    ret = (f(x+h) - f(x)) / h;
end

function ret = D2(x, h) %Funktion f�r att ber�kna centraldifferansen
    ret = (f(x+h) - f(x-h)) / (2*h);
end

function ret = f(x) %Funktion f�r funktionen f(x)
    ret = (sqrt((x-5).^5)+2*cos(pi*sqrt(x))) / (sqrt(x+4*log(x-pi)) - 1);
end

%Svar: Centraldifferensen �r nogrannast eftersom den ber�knar medelfelet av
%fram�t- och bak�tdifferensen. 