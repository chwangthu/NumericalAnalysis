J0 = @(x) besselj(0,x);
z=zeros(1,10);
for n = 1:10
    z(n) = fzerotx(J0,[(n-1),n]*pi);
end

disp(z)
x = 0:pi/100:10*pi;

plot(z,zeros(1,10),'x',x,J0(x),'red')
title("The first ten positive zeros of J")
line([0 10*pi],[0 0])
axis([0 10*pi -0.6 1.2])