function[x]=SOR(x,A,b,eps,w)
n=size(A,1);
y=inf(n,1);
while norm(x-y,inf)>=eps
    y=x;
    for i=1:n
       sum=b(i);
       for j=1:n
           if j~=i
               sum=sum-A(i,j)*x(j);
           end
       end
       x(i)=(1-w)*x(i)+w*sum/A(i,i);
    end
end
