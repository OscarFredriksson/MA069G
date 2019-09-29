clear;
clc;

format long;

%Skapa listor med rullade 
y1 = roll_dice(10.^3);
y2 = roll_dice(10.^4);
y3 = roll_dice(10.^5);


mean_y1 = mean(y1);
mean_y2 = mean(y2);
mean_y3 = mean(y3);



function ret = roll_dice(N) %Rulla en tärning N gånger
    ret = floor(1 + 6*rand(1, N));
end

%2 a) Vid större N kommer medelvärdet att gå mot 3.5