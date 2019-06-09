function[T] = gauss(f, a, b, n)
h=(b-a)/n;
T=0;
for i=1:n
    T=T+h/2*( f(a+(i-1)*h+h/2-h/(2*sqrt(3))) + f(a+(i-1)*h+h/2+h/(2*sqrt(3))) );
end
