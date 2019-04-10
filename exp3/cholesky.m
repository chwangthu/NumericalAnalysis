function [A] = cholesky(A)
%choleksy
%   Cholesky decomposition for matrix A
n=size(A, 1);
for i=1:n
    for j=i+1:n
        A(i,j)=0;
    end
end
for j=1:n
    for k=1:j-1
        A(j,j)=A(j,j)-A(j,k)*A(j,k);
    end
    A(j,j)=sqrt(A(j,j));
    for i=j+1:n
        for k=1:j-1
            A(i,j)=A(i,j)-A(i,k)*A(j,k);
        end
        A(i,j)=A(i,j)/A(j,j);
    end
end

