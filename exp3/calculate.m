n_list=[8, 10, 12];
for i=1:3
    n=n_list(i);
    fprintf("Current n is %d\n", n);
    [h,b]=hilbert(n);
    L=cholesky(h);
    x_hat=lu_solve(L,L',b);
    r=b-h*x_hat;
    delta_x=x_hat-ones(n,1);
    disp(inf_norm(r));
    disp(inf_norm(delta_x));
    
    fprintf("After disturbence when n=%d\n", n);
    b=b+ones(n,1)*1e-7;
    x_hat=lu_solve(L,L',b);
    r=b-h*x_hat;
    delta_x=x_hat-ones(n,1);
    disp(inf_norm(r));
    disp(inf_norm(delta_x));
end

