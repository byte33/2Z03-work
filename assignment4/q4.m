h = 0.01;
X = 5;
N = round(X/h);

maxDiff = 0;
%thetaPrime = u

theta = zeros(1,N+1);
u = zeros(1,N+1);
thetaApprox = zeros(1,N+1);
uApprox = zeros(1,N+1);
t = zeros(1,N+1);

thetaApprox(1) = 1.309;
theta(1) = 1.309;
uApprox(1) = 0;
u(1) = 0;
t(1) = 0;

for n = 1:N
    t(n+1) = t(n) + h;
    uApprox(n+1) = uApprox(n) + h*(-4*uApprox(n)-81*thetaApprox(n));
    thetaApprox(n+1) = thetaApprox(n) + h*(uApprox(n));
    u(n+1) = u(n) + h*(-4*u(n)-81*sin(theta(n)));
    theta(n+1) = theta(n) + h*(u(n));
    if abs(thetaApprox(n)-theta(n))>maxDiff
        maxDiff = abs(thetaApprox(n)-theta(n));
    end
end

maxDiff

plot(t,theta,"r",t,thetaApprox,"-.b");
title('Matteo Tullo, 400175089');
legend("True Theta","Approximate Theta",...
       'Location','SouthEast');
xlabel('t'); ylabel('theta');
xlim([0,5]);