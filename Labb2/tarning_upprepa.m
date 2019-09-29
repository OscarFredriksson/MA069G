
clear
clc
format long

%n = 10; %antal kast per medelv�rde
%N = [10^3 10^4 10^5]; %antal upprepningar

n = 200;
N = 10^5;

for i=1:length(N)
    figure;
    hold on
    r = zeros(1,N(i));
    for j=1:N(i)
        y = floor(1+6*rand(1,n));
        r(j) = mean(y);
    end
    hist(r,100); % Rita ett histogram med 100 intervall
    title([num2str(n),' st kast per medelv�rde med ', num2str(N(i)), ' upprepningar'])
    xlabel('Medelv�rden')
    ylabel('Frekvensen')
    shg
    
end

hold on

x = 3:0.000001:4;

u = 3.5;
sdev = sqrt(35 / (12*n));

f = norm(x, u, sdev);

plot(x, 1000*f, 'r');

function ret = norm(x, u, sdev)
    ret = (1 / (sdev * sqrt(2*pi))) * exp(-( (x-u).^2) / (2*sdev.^2));
end

%b) F�rdelningen p�verkas n�got, men inte n�got stort. Fler iterationer ger en
%exaktare normalf�rdelning. 

%c) Eftersom vi g�r fler t�rningskast f�r vi en t�tare och mer precis f�rdelning.

%e) Vi beh�ver g�ngra med 1000 f�r att kurvan ska bli lika h�g 