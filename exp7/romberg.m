function[T] = romberg(f, a, b, e)
h=b-a;
n=1;
T1=h/2*(f(a)+f(b));
T2=h/2*(f(a)+f(b));
while 1
    n=n+1;
    T1=T2;
%     for i=1:n-1
%         fprintf("%.9f ", T1(i));
%     end
%     fprintf("\n");
    T2=zeros(1,n);
    T2(1)=0.5*T1(1);
    for j=1:2^(n-2)
        T2(1)=T2(1)+f(a+(2*j-1)/2^(n-1))*h/2; %复合梯形公式
    end  
    for j=2:n
        T2(j)=(4^(j-1)*T2(j-1)-T1(j-1))/(4^(j-1)-1);
    end
    h=h/2;
    if(abs(T2(1)-T1(1))<e)
        break;
    end
end
T=T2(1);
