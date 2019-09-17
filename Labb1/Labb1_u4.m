format long;

clc;
clear;

x0 = 7;

h1 = 0.04;
h2 = 0.02;
h3 = 0.01;

f_biss_h1 = f_biss(x0, h1)
f_biss_h2 = f_biss(x0, h2)
f_biss_h3 = f_biss(x0, h3)

syms sym_f(x)

sym_f(x) = (sqrt((x-5)^5)+2*cos(pi*sqrt(x)))/(sqrt(x+4*log(x-pi)) - 1);  % anger f(x)

f_prim = diff(sym_f); %beräknar f'(x)

sym_f_biss = diff(f_prim);  %Beräknar f''(x)

x = x0; %skriv x0 värdet till x

f_biss_exact = subs(sym_f_biss); %Beräkna det exakta värdet av f''(x0)

eval(f_biss_exact) %exakt värde

function ret = f_biss(x, h) %Funktion för f'(x)
    ret = (f(x-h) - 2*f(x)+f(x+h)) / (h.^2);
end

function ret = f(x) %Funktion för f(x)
    ret = (sqrt((x-5).^5)+2*cos(pi*sqrt(x))) / (sqrt(x+4*log(x-pi)) - 1);
end 