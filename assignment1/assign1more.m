h = 0.01;
X = 11;
N = round(X/h);

x = zeros(1,N+1);
y = zeros(1,N+1);

x(1) = 0;
y(1) = 8.49;

for n = 1:N
    x(n+1) = x(n) + h;
    y(n+1) = y(n) + h*(-1*y(n)/((8.5^2-y(n)^2)^(0.5)));
end

plot(x,y,"r");
title('Matteo Tullo, 400175089');
legend('h=0.01',...
       'Location','NorthWest');
xlabel('x'); ylabel('y');