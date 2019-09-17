%Uppgift 5-6

format long;

%Töm alla fönster
clc;
clear;

%Bestäm värden att plotta
x = -10:0.01:10;
   
F = @(x) -(cos(x)+ x/5);    %Funktionen från uppgift 5

plot(x, F(x)); %Plotta grafen
grid 
shg 

%Beräkna rötterna
root1 = NewtonRaphson(F, -1,  0.000001)
root2 = NewtonRaphson(F, 2.5, 0.000001)
root3 = NewtonRaphson(F, 3.5, 0.000001)

%f: functionhandle, x0: startvärde n: antal iterationer
function root = NewtonRaphson(f, x0, t) 
    
    syms x; %Symbolic variable
        
    prim_f = diff(f(x));    %Derivera funktionen    
        
    r = x0; %Spara x0 värdet
    
    it = 0; %Antalet iterationer
    
    while(abs(f(r)) > t) %Kör tills toleransen är nådd
    
        num = subs(f(x), x, r);     %Beräknar raphsons täljare    
        den = subs(prim_f, x, r);   %Beräknar raphsons nämnare
        
        r = r - double(num) / double(den);  %Beräknar raphson
        
        it = it+1; %Öka antalet gjorda iterationer
    end
    
    %Printa iterationer och returnera roten
    it
    root = r;
end

%Svar: Det blir problem i grafens extrempunkter eftersom derivatan här blir
%0, vi får då division med 0. När man startar med x0 = 3 kommer det bli
%problem eftersom denna är väldigt nära en extrempunkt. 

%Nollställen med tolerans 0.00001:

%   x = -1.306440   3 iterationer.
%   x =  1.977380   4 iterationer.
%   x =  3.837467   4 iterationer. 
