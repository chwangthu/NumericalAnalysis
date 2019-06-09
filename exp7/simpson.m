function[T] = simpson(f, a, b, n)
h=(b-a)/n;
T=0;
for i=1:n
    T=T+h/6*(f(a+(i-1)*h)+4*f(a+(i-1)*h+h/2)+f(a+i*h));
end
