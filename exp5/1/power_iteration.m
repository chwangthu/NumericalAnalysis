function [x, lam] = power_iteration(A)
%power_iteration
%Get the A's eigenvalue with maximum absolute value
n=size(A,1);
u=rand(n,1);
lam=0;
lam0=inf;
cnt=0;
while norm(lam0-lam, inf)>1e-5
    lam0=lam;
    v=A*u;
    lam=max(abs(v));
    u=v/lam;
    cnt=cnt+1;
end
fprintf("Num of iterations=%d\n", cnt);
x=u;

