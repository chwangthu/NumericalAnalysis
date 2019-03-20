h=logspace(-16,0,33);
M=1;
loglog(h,1/2.*M.*h);
hold on
loglog(h, eps/2./h);
hold on
loglog(h, 1/2.*M.*h + eps/2./h);
hold on
loglog(h, abs((sin(1+h)-sin(1))./h - cos(1)));
hold on
xlabel("步长h");
ylabel("误差");
title("不同步长取值对应的差商近似导数的误差");
set(gca, 'xtick', logspace(-16,0,9), 'ytick', logspace(-17,1,10));