n=0;
tot = single(0);
tot_prev = single(0);
while true
    n = n + 1;
    tot = tot + single(1/n);
    if tot == tot_prev
        break;
    end
    tot_prev = tot;
end
disp("single case stops when n=" + num2str(n) + " sum=" + num2str(tot));

res = 0;
tic
for i=1:n-1
    res = res + 1/i;
end
toc
disp("result with double float is " + num2str(res));
disp("error="+num2str(tot-res));