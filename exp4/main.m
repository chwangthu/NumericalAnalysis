e_list=[1, 0.1, 0.01, 0.0001];
n=100;
a=1/2;
% e=input('Please input eplison: ');
for i=1:4
    fprintf("epsilon= %f\n", e_list(i));
    e=e_list(i);
    y=@(x) (1-a)/(1-exp(-1/e))*(1-exp(-x/e))+a*x;
    x=0:1/n:1;
    x=y(x);
    x=x';
    x=x(2:n);


    % e=e_list(1);


    [A,b]=coef_mat(e,a,n);

    fprintf("Using Jacob\n");
    x_=jacob(zeros(n-1,1), A, b, 1e-8);
    disp(norm(x-x_,inf));

    fprintf("Using G-S\n");
    x_=gauss_seidel(zeros(n-1,1), A, b, 1e-8);
    disp(norm(x-x_,inf));

    fprintf("Using SOR\n");
    w=1.5;
    if e==0.0001
        w=1;
    end
    x_=SOR(zeros(n-1,1), A, b, 1e-8, w);
    disp(norm(x-x_,inf));
end
