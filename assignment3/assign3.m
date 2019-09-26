%Question 1
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


%Question 3
format long
N = 0;
maxError = 100;
while maxError > 0.003814
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


%Question 4
format long

N = 133;
h = 3/N;

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