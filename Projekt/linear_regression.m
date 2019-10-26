function linear_regression(data, titlestr)

x = 1:5;
x2 = 1:10;

[p, S] = polyfit(x, data, 1);
[y_fit, delta] = polyval(p, x2, S);



figure('Name', titlestr, 'NumberTitle', 'off');

plot(x, data, ':o', 'linewidth', 1);
hold on;

plot(x2, y_fit, '-r', 'linewidth', 2);

    
plot(x2, mean(data) * ones(10, 1), '--k', 'linewidth', 1);


plot(x2,y_fit+delta,'m--',x2,y_fit-delta,'m--');

legend('De senaste fem månaderna', 'lin-reg passad','medelvärde', '95% gissningsintervall');

title(titlestr);
xlabel('År');
ylabel('Efterfrågan i antal');

end





