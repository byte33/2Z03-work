format long
h = 0.2;
X = 3;
N = round(X/h);

x = zeros(1,N+1);
y = zeros(1,N+1);

x(1) = 0;
y(1) = 29;

for n = 1:N
    x(n+1) = x(n) + h;
    y(n+1) = y(n) + h*(-3/2*(y(n)-23));
end

x
y