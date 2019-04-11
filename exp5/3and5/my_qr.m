function [Q, R] = my_qr(A)
[m,n]=size(A);
V=zeros(m,n);
Q=eye(m);
for k=1:n
    sigma=0;
    for j=k:m
        sigma=sigma+A(j,k)*A(j,k);
    end
    sigma=sqrt(sigma);
    if(A(k,k) < 0)
        sigma=-sigma;
    end
    if sigma==A(k,k)
        continue
    end
    e=zeros(m,1);
    e(k,1)=1;
    for j=k:m
        V(j,k)=A(j,k);
    end
    V(:,k)=V(:,k)+sigma*e;
    beta=V(:,k)'*V(:,k);
    for j=k:n
        gamma=V(:,k)'*A(:,j);
        A(:,j)=A(:,j)-2*gamma/beta*V(:,k);
    end
    omega=V(:,k)/norm(V(:,k),2);
    H=eye(m)-2*(omega*omega');
    Q=Q*H;
end
R=A;