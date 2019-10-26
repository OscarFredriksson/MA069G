clear;
clc;

format long;

P_old = [0.80 0.15 0.05; 
         0.10 0.75 0.15; 
         0.25 0.25 0.5];
     
P_new = [0.75 0.15 0.10; 
         0.15 0.60 0.25; 
         0.20 0.30 0.50];

s_0 = [0.8 0.15 0.05];

tol = 0.001;

old_s = solve(P_old, s_0, tol);
new_s = solve(P_new, s_0, tol);

function ret = solve(P, s_0, tol)
    s = s_0;

    err = 1;

    iter = 0;

    while(err > tol)
       s_0 = s;
       s = s_0*P;
       err = max(abs(s - s_0));
       iter = iter + 1;
    end
    
    ret = s;
end

