h = 0.02;
X = 5;
N = round(X/h);

x = zeros(1,N+1);
u = zeros(1,N+1);
t = zeros(1,N+1);

x(1) = 9;
u(1) = 3;
t(1) = 0;

for n = 1:N
    t(n+1) = t(n) + h;
    u(n+1) = u(n) + h*(-2*u(n)-49*x(n));
    x(n+1) = x(n) + h*(u(n));
end

plot(t,u,"g",t,x,"r");
title('Matteo Tullo, 400175089');
legend("u(t) [Velocity]","x(t) [Displacement]",...
       'Location','SouthEast');
xlabel('x'); ylabel('y');
xlim([0,5]);