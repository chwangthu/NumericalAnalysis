function[lam]=qr_eig(A, iter)
for i=1:iter
    [Q,R]=my_qr(A);
    A=R*Q;
%     disp(A);
end
lam=diag(A);
