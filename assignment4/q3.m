counter = 1;
lambda = 1;
while counter ~= 0
    counter = 0;
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
        u(n+1) = u(n) + h*(-2*lambda*u(n)-49*x(n));
        x(n+1) = x(n) + h*(u(n));
        if x(n) < 0
            counter = counter + 1;
            counter;
        end
    end
    lambda = lambda + 0.02;
end
lambda