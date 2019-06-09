%(1)
fprintf("Simpson: %.8f\n", simpson(@(y) 1/y, 1, 2, 36))
fprintf("Simpson: %.8f\n", 4*simpson(@(y) 1/(1+y^2), 0, 1, 13))

%(2)
fprintf("Romberg: %.8f\n", romberg(@(y) 1/y, 1, 2, 0.5*10^(-8)));
fprintf("Romberg: %.8f\n", 4*romberg(@(y) 1/(1+y^2), 0, 1, 0.5*1e-8))

%(3)
fprintf("Gauss: %.8f\n", gauss(@(y) 1/y, 1, 2, 33));
fprintf("Gauss: %.8f\n", 4*gauss(@(y) 1/(1+y^2), 0, 1, 12));