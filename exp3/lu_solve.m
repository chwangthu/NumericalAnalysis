function[x] = lu_solve(l, u, b)
%lu_solve
% solve x using l, u decompsition. NOTE that the diagonal of l is not
% required to be 1.
[m,n]=size(l);
if m~=n
    fprintf("error! l is not square matrix!");
end
y=zeros(n,1);
for i=1:n
    y(i)=b(i);
    for j=1:i-1
        y(i)=y(i)-l(i,j)*y(j);
    end
    y(i)=y(i)/l(i,i);
end
x=zeros(n,1);
for i=n:-1:1
    if u(i,i)==0
        fprintf("error, cannot find pivot!");
    end
    x(i)=y(i);
    for j=n:-1:i+1
        x(i)=x(i)-u(i,j)*x(j);
    end
    x(i)=x(i)/u(i,i);
end