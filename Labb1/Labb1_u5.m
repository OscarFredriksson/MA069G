
x =0:0.01:10;
   
F = @(x) -(cos(x)+ x/5); 


plot(x, F(x));

grid 

shg


root1 = NewtonRaphson(F, 2.5, 10)
root2 = NewtonRaphson(F, 3.5, 10)


function root = NewtonRaphson(f, x0, n)
    
    syms x;
    
    z = f(x);
    
    diffZ = diff(z);
    
    r = x0;
    
    for idx = 1 : n  
        
        numZ = subs(z, x, r);
        denZ = subs(diffZ, x, r);
        r = r - double(numZ) / double(denZ);
        
    end
    root = r;
end