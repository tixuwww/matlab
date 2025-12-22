F= @(x) x ^ 3 + x - 1;
f1 = @(x) 3*x^2+1;
f2 = @(x)6 * x;

eps = 0.000001;
x0 = 1;
x1 = x0 - F (x0)/f1(x0);
while abs(x1-x0) > eps
    x0=x1;  
    x1 = x0 - F (x0)/f1(x0);
end

x1