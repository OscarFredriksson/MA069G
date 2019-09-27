clear;
clc;

p = [2/100, 10/100, 20/100,  15/100, 45/100, 8/100];

F = cumsum(p);

Fi = 1 - F;

n=100;

y = zeros(1, n);

for i=1:n
    u = rand(1);
        
    y(i) = sum(u<Fi)+1;
end    

x = 1:1:6;

hist(y,x);




