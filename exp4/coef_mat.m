function[A, b] = coef_mat(e, a, n)
%coef_mat
% Generate coefficient matrix A
h=1/n;
n=n-1;
A=zeros(n);
for i=1:n
    A(i,i)=-(2*e+h);
    if i~=1
        A(i,i-1)=e;
    end
    if i~=n
        A(i,i+1)=e+h;
    end
end
b=a*h*h*ones(n,1);
b(1,1)=b(1,1)-e*0;
b(n,1)=b(n,1)-(e+h);