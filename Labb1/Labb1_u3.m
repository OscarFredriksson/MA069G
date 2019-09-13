format long;

x0 = 7;
h = 0.02;

k1 = f_k1(x0,h)

f_prim_x0 = f_prim(x0, h, k1)

function ret = f_prim(x, h, k1)
    ret = (f(x+h) - f(x)) / h + k1*h;
end

function ret = f_k1(x,h)
    ret = 2*(2*f(x+h*0.5)-f(x+h)-f(x)) / (h.^2);
end

function ret = f(x)
    ret = (sqrt((x-5).^5)+2*cos(pi*sqrt(x))) / (sqrt(x+4*log(x-pi)) - 1);
end 
