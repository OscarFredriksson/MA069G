format long;

x0 = 7;

h = 0.02;

k1 = f_k1(x0,h) %Ber�kna k1

f_prim_x0 = f_prim(x0, h, k1)   %Ber�kna f'(x0)

function ret = f_prim(x, h, k1) %Funktion f�r fram�tdifferansen
    ret = (f(x+h) - f(x)) / h + k1*h;
end

function ret = f_k1(x,h)    %Funktion f�r att ber�kna k1
    ret = 2*(2*f(x+h*0.5)-f(x+h)-f(x)) / (h.^2);
end

function ret = f(x) %Funktion f�r f(x)
    ret = (sqrt((x-5).^5)+2*cos(pi*sqrt(x))) / (sqrt(x+4*log(x-pi)) - 1);
end 

%Svar: Vi har eliminerat en taylor-term till, d�rf�r �r detta mer exakt �n
%i uppgift 1. Men det finns fortfarande fler taylor-term, d�rf�r �r det
%inte helt exakt. 
