h = 0.4;
X = 2;
N = round(X/h);

x = zeros(1,N+1);
y = zeros(1,N+1);

x(1) = 0;
y(1) = 10;

for n = 1:N
    x(n+1) = x(n) + h;
    y(n+1) = y(n) + h*((1/3)*y(n)*(x(n))^2);
end

x1 = x;
y1 = y;

xExact = 0:0.1:2;
yExact = (10*exp((xExact.^3)/9));

h = 0.2;
N = round(X/h);

x = zeros(1,N+1);
y = zeros(1,N+1);

x(1) = 0;
y(1) = 10;

for n = 1:N
    x(n+1) = x(n) + h;
    y(n+1) = y(n) + h*((1/3)*y(n)*(x(n))^2);
end

x2 = x;
y2 = y;

h = 0.1;
N = round(X/h);

x = zeros(1,N+1);
y = zeros(1,N+1);

x(1) = 0;
y(1) = 10;

for n = 1:N
    x(n+1) = x(n) + h;
    y(n+1) = y(n) + h*((1/3)*y(n)*(x(n))^2);
end


plot(xExact,yExact,"g",x1,y1,"r",x2,y2,"m",x,y,"k");
title('Matteo Tullo, 400175089');
legend('exact solution','h=0.4','h=0.2',"h=0.1",...
       'Location','NorthWest');
xlabel('x'); ylabel('y');

