A=[5 -4 1;-4 6 -4; 1 -4 7];
[x, lam]=power_iteration(A);
disp(x);
disp(lam);

B=[25,-41,10,-6;-41,68,-17,10;10,-17,5,-3;-6,10,-3,2];
[x, lam]=power_iteration(B);
disp(x);
disp(lam);