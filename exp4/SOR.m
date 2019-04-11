function[x]=SOR(x,A,b,eps,w)
n=size(A,1);
y=inf(n,1);
max_cnt=100000;
cnt=0;
while norm(x-y,inf)>=eps
    if cnt > max_cnt
        fprintf("SOR doesn't converge!!!\n");
        return
    end
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
    cnt=cnt+1;
end
