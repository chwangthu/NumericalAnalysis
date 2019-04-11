function l = qr_offset_eig(A,iter)
A=hess(A);
n=size(A,1);
l=zeros(n,1);
num=1;
for i=1:iter
    if(abs(A(n,n-1))<1e-3)
        l(num,1)=A(n,n);
        num=num+1;
        n=n-1;
        if n==1
            break;
        end
        A=A(1:n,1:n);
    end
    u=A(n,n);
    [q,r]=my_qr(A-u*eye(n,n));
    A=r*q+u*eye(n,n);
end
l(num,1)=A(1,1);