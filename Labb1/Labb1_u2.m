format long;

syms f(x)

f(x) = (sqrt((x-5)^5)+2*cos(pi*sqrt(x)))/(sqrt(x+4*log(x-pi)) - 1)  % anger f(x)

f_prim = diff(f) % anger ett uttryck för derivatan f?(x)

x = 7; % punkten x = x_0

f_prim_x_0 = subs(f_prim) % värdet på derivatan i x = x_0

