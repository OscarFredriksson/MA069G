clear;
clc;

sum = 0;

for i=1:365
    bs = blackjacksim(100);
    sum = sum + bs(100);
end
 
