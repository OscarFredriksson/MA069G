format long;

x0 = 7;

h1 = 0.04;
h2 = 0.02;
h3 = 0.01;

f_biss_h1 = f_biss(x0, h1)
f_biss_h2 = f_biss(x0, h2)
f_biss_h3 = f_biss(x0, h3)

syms f(x)

sym_f(x) = (sqrt((x-5)^5)+2*cos(pi*sqrt(x)))/(sqrt(x+4*log(x-pi)) - 1);  % anger f(x)

f_prim = diff(sym_f); % anger ett uttryck för derivatan f?(x)

sym_f_biss = diff(f_prim);

x = x0;

f_prim_x_0 = subs(sym_f_biss) % värdet på derivatan i x = x_0

f_biss_exact = subs(sym_f_biss);

function ret = f_biss(x, h)
    ret = (f(x-h) - 2*f(x)+f(x+h)) / (h.^2);
end

function ret = f(x)
    ret = (sqrt((x-5).^5)+2*cos(pi*sqrt(x))) / (sqrt(x+4*log(x-pi)) - 1);
end 