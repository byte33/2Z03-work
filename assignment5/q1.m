format long
h = 0.01;
X = 20;
k = 3.4;
N = round(X/h);

x1 = zeros(1,N+1);
u1 = zeros(1,N+1);
x2 = zeros(1,N+1);
u2 = zeros(1,N+1);
t = zeros(1,N+1);

x1(1) = 0;
u1(1) = 0;
x2(1) = 12;
u2(1) = 0;
t(1) = 0;

for n = 1:N
    t(n+1) = t(n) + h;
    u1(n+1) = u1(n) + h*(-k*x1(n)-k*(x1(n)-x2(n)));
    x1(n+1) = x1(n) + h*(u1(n));
    u2(n+1) = u2(n) + h*(-k*(x2(n)-x1(n))-k*x2(n));
    x2(n+1) = x2(n) + h*(u2(n));
end

max(x2())