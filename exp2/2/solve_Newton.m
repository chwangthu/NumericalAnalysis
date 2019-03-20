f=@(x) x^3-x-1;
df=@(x) 3*x^2-1;
delta1=1e-7;
delta2=1e-7;
x0=0.6;
lambda0=0.5;
fprintf("f(x)=x^3-x-1\n");
damped_Newton(f,df,x0,delta1,delta2,lambda0);
Newton(f,df,x0,delta1,delta2);
fprintf("The answer using fzero=%f\n", fzero(f, x0));

f=@(x) -x^3+5*x;
df=@(x) -3*x^2+5;
x0=1.35;
fprintf("f(x)=-3x^2+5x\n");
damped_Newton(f,df,x0,delta1,delta2,lambda0);
Newton(f,df,x0,delta1,delta2);
fprintf("The answer using fzero=%f\n", fzero(f, x0));
