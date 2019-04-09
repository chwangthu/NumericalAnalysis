function[norm] = inf_norm(x)
norm=0;
n=length(x);
for i=1:n
    if(abs(x(i))>norm)
        norm=abs(x(i));
    end
end