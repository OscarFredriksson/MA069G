format long;

x0 = 7;

h1 = 0.04;
h2 = 0.02;
h3 = 0.01;

D1_h1 = D1(x0, h1)
D1_h2 = D1(x0, h2)
D1_h3 = D1(x0, h3)

D2_h1 = D2(x0, h1)
D2_h2 = D2(x0, h2)
D2_h3 = D2(x0, h3)

function ret = D1(x, h)
    ret = (f(x+h) - f(x)) / h;
end

function ret = D2(x, h)
    ret = (f(x+h) - f(x-h)) / (2*h);
end

function ret = f(x)
    ret = (sqrt((x-5).^5)+2*cos(pi*sqrt(x))) / (sqrt(x+4*log(x-pi)) - 1);
end