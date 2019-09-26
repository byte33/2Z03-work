format long
N = 0;
maxError = 100;
while maxError > 0.03814
    N = N+1;
    h = 3/N;
    x = zeros(1,N+1);
    y = zeros(1,N+1);

    x(1) = 0;
    y(1) = 29;

    for n = 1:N
        x(n+1) = x(n) + h;
        y(n+1) = y(n) + h*(-3/2*(y(n)-23));
    end

    yExact = (6*exp(-3/2*x)+23);
    y;
    error = abs(y-yExact);
    maxError = max(error);
end
maxError
N