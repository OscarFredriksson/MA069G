format long;

clear;
clc;

N = [1000, 10000, 100000, 1000000];

[N_1D, mu_1D, err_1D] = mcconv([-5 5], N);
[N_2D, mu_2D, err_2D] = mcconv([-5 5; -5 5], N);


a_1D = polyfit(log(N_1D), log(err_1D), 1);
a_2D = polyfit(log(N_2D), log(err_2D), 1);

p_1D = a_1D(1);
C_1D = exp(a_1D(2));

p_2D = a_2D(1);
C_2D = exp(a_2D(2));

%a) Vi f�r konvergens. 1D och 2D skiljer sig eftersom vi har 2 dimensioner
%ist�llet f�r 1 och d� f�r vi en volym ist�llet f�r en area under
%integralen. 

%b) p �ndras ej beroende p� dimensionen, detta st�mmer enligt teorin. C
%�kar n�r dimensionen �kar. 

%c) Eftersom vi har 5 punkter i 1D kommer vi i 2D f� 5^2, i 10D f�r vi
%5^10, och i 2D f�r vi 5^20. 








