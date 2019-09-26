h = 0.1;
X = 10;
N = round(X/h);

x = zeros(1,N+1);
y = zeros(1,N+1);
t = zeros(1,N+1);

x(1) = 0.8;
y(1) = 0;
t(1) = 0;

for n = 1:N
    t(n+1) = t(n) + h;
    y(n+1) = y(n) + h*((0.2*(0.6-y(n))*x(n)) - 0.5*y(n));
    x(n+1) = x(n) + h*((-0.2*(0.6-y(n))*x(n))+ 0.1*y(n));
end

t(51)
x(51)