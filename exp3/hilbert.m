function [h,b] = hilbert(n)
h=zeros(n);
x=ones(n,1);
for i=1:n
    for j=1:n
        h(i, j)=1/(i+j-1);
    end
end
b=h*x;