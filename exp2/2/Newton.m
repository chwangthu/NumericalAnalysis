function [answer] = Newton(f, df, x0, delta1, delta2)
%Basic Newton Method
%   f is current fuction. To avoid using sym, we pass df as the difference
%   of f directly. x0 is the initial root.
k=0;
x2=x0; x1=0; %x2 presents solution in current iteration, while x1 signifys the last

fprintf("Using basic Newton Method, initial x=%f\n", x0);
while (abs(f(x2)) > delta1) || (abs(x2-x1) > delta2)
    x1=x2;
    x2=x1-f(x2)/df(x2);
    k=k+1;
    fprintf("The %dth iteration: x=%.8f\n", k, x2);
end
fprintf("The total iterations=%d, and the answer=%f\n", k, x2);
answer=x2;
return;
