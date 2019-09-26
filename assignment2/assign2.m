%Question 1

maxValue = -inf;

for x = -5:0.1:5
    for y = -5:0.1:5
        value = ((x-(6*y))/((x^2)+(y^2)+(10*x)-(10*y)+46));
        if value > maxValue
            maxValue = value;
            xMax = x;
            yMax = y;
        endif
    endfor
endfor


maxValue
xMax
yMax


%Question 2

% [x y] = meshgrid(-5:0.2:5,-5:0.2:5);
% a = ones(size(x));
% b = sin(((x.^4)/5)+(2*(exp((y.^2)/-10))));

% aScaled = a./sqrt(a.^2+b.^2);
% bScaled = b./sqrt(a.^2+b.^2);

% quiver(x,y,aScaled,bScaled)
% axis equal;
% title('Direction Field for y''(x) = sin(x^4/5+2*exp(-y^2/10))');
% xlabel('x');
% ylabel('y');


%Question 4

% [x y] = meshgrid(-2:0.2:2,-1:0.2:3);
% a = ones(size(x));
% b = (exp(x.*-3.5)-(y.*3.6));

% aScaled = a./sqrt(a.^2+b.^2);
% bScaled = b./sqrt(a.^2+b.^2);

% xSol = -2:0.01:2;
% ySol = (10*(exp(-3.5*xSol)-(exp(-3.6*xSol))));

% quiver(x,y,aScaled,bScaled);
% hold on
% p = plot(xSol, ySol,"r");
% hold off
% set(p,"linewidth", 2);
% title("Matteo Tullo, 400175089");
% xlabel('x');
% ylabel('y');
% xlim([-2,2]);
% ylim([-1,3]);