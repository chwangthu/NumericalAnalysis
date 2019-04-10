function[x]=jacob(x,A,b,eps)
n=size(A,1);
y=inf(n,1);
while norm(x-y,inf)>=eps
    y=x;
    for i=1:n
        x(i)=b(i);
        for j=1:n
            if j~=i
                x(i)=x(i)-A(i,j)*y(j);
            end
        end
        x(i)=x(i)/A(i,i);
    end
end
