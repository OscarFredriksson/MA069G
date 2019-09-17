%Uppgift 5-6

format long;

%T�m alla f�nster
clc;
clear;

%Best�m v�rden att plotta
x = -10:0.01:10;
   
F = @(x) -(cos(x)+ x/5);    %Funktionen fr�n uppgift 5

plot(x, F(x)); %Plotta grafen
grid 
shg 

%Ber�kna r�tterna
root1 = NewtonRaphson(F, -1,  0.000001)
root2 = NewtonRaphson(F, 2.5, 0.000001)
root3 = NewtonRaphson(F, 3.5, 0.000001)

%f: functionhandle, x0: startv�rde n: antal iterationer
function root = NewtonRaphson(f, x0, t) 
    
    syms x; %Symbolic variable
        
    prim_f = diff(f(x));    %Derivera funktionen    
        
    r = x0; %Spara x0 v�rdet
    
    it = 0; %Antalet iterationer
    
    while(abs(f(r)) > t) %K�r tills toleransen �r n�dd
    
        num = subs(f(x), x, r);     %Ber�knar raphsons t�ljare    
        den = subs(prim_f, x, r);   %Ber�knar raphsons n�mnare
        
        r = r - double(num) / double(den);  %Ber�knar raphson
        
        it = it+1; %�ka antalet gjorda iterationer
    end
    
    %Printa iterationer och returnera roten
    it
    root = r;
end

%Svar: Det blir problem i grafens extrempunkter eftersom derivatan h�r blir
%0, vi f�r d� division med 0. N�r man startar med x0 = 3 kommer det bli
%problem eftersom denna �r v�ldigt n�ra en extrempunkt. 

%Nollst�llen med tolerans 0.00001:

%   x = -1.306440   3 iterationer.
%   x =  1.977380   4 iterationer.
%   x =  3.837467   4 iterationer. 
