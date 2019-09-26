format long
h = 0.001;
X = 5;
N = round(X/h);

x = zeros(1,N+1);
y = zeros(1,N+1);
ystar = zeros(1,N+1);

x(1) = 0;
y(1) = 3/5;

for n = 1:N
    x(n+1) = x(n) + h;
    ystar(n+1) = y(n) + h*(1/2*(y(n)+sin(x(n)*y(n))));
    y(n+1) = y(n) + h*(1/2)*((1/2*(y(n)+sin(x(n)*y(n))))+(1/2*(ystar(n+1)+sin(x(n+1)*ystar(n+1)))));
end

x(5001)
y(5001)