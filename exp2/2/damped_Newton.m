function [answer] = damped_Newton(f, df, x0, delta1, delta2, lambda0)
%Damped Newton Method
%   f is current fuction. To avoid using sym, we pass df as the difference
%   of f directly. delta1 represents the absolute error, and delta2
%   represents the error between two iterations. lambda and x0 is the
%   initial value of the parameters in Damped Newton Method.
k=0;
x2=x0; x1=0; %x2 presents solution in current iteration, while x1 signifys the last

fprintf("Using Damped Newton method. Initial lambda=%d, x=%f\n", lambda0, x0);
while (abs(f(x2)) > delta1) || (abs(x2-x1) > delta2)
    s=f(x2)/df(x2);
    x1=x2;
    x2=x1-s;
    lambda=lambda0;
    while abs(f(x2)) >= abs(f(x1))
        x2=x1-lambda*s;
        lambda=lambda/2;
    end
    fprintf("The %dth iteration: lambda=%.8f, x=%.8f\n", k, lambda, x2);
    k=k+1;
end
fprintf("The total iterations=%d, and the answer=%.8f\n", k, x2);
answer=x2;
return;
