
x =[0:0.01:10];
   
syms F(x)

F(x) = -(cos(x)+ x/5); 

plot(x, F);

grid 

shg