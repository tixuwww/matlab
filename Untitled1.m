close all;
clear;

f=@(x)x.^3-2*x+2;
a = -10;
b = +10;
d = (a+b)/2;
f(a) 
f(b)
eps = 0.00001;
t = a:0.1:b;
while eps < abs(b-a)
     t = a:0.1:b;
    if f(a) * f(d) > 0
        a = d;
    elseif f(b) * f(d) > 0
        b = d;
    end
    
    d = (a+b)/2;
   
    
    figure("Name", "Фигура");
    grid on;
    hold on;
    plot(t, f(t));
    plot(d,'x','MarkerFaceColor','red',...
    'MarkerSize',15);
end    

