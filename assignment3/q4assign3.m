format long

N = 133;
h = 20/N;

x = zeros(1,N+1);
y = zeros(1,N+1);
tempFunc = zeros(1,N+1);

x(1) = 0;
y(1) = 29;
tempFunc(1) = 23+(10*sin(20));


for n = 1:N
    x(n+1) = x(n) + h;
    tempFunc(n+1) = 23 + (10*(sin(10/((x(n)^2)+0.5))));
    y(n+1) = y(n) + h*(-3/2*(y(n)-tempFunc(n)));
end

plot(x,y,"g",x,tempFunc,"r");
title('Matteo Tullo, 400175089');
legend("T(t) [Bar Temp.]","g(t) [Ambient Temp.]",...
       'Location','SouthEast');
xlabel('x'); ylabel('y');
xlim([0,20]);