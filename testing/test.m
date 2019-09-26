format long
h = 0.01;
X = 50;
N = round(X/h);

endDisp = 0;
Vmax = 30;
Vmin = 0;

t(1) = 0;
x(1) = 0;
u(1) = Vmax;

while Vmax-Vmin > 0.01
       u(1) = (Vmax-Vmin)/2 + Vmin;
       for n = 1:N
              t(n+1) = t(n) + h;
              xstar(n+1) = x(n) + h*(u(n));
              ustar(n+1) = u(n) + h*(87/10*(x(n)-5)*exp(-(x(n)-5)^2));
              
              x(n+1) = x(n) + h*(1/2)*(u(n) + ustar(n+1));
              u(n+1) = u(n) + h*(1/2)*((87/10*(x(n)-5)*exp(-(x(n)-5)^2)) + (87/10*(xstar(n+1)-5)*exp(-(xstar(n+1)-5)^2)));

              if x(n+1)<0 || x(n+1)>10
                     endDisp = x(n+1);
                     break
              endif
              endDisp = x(n+1);
       endfor
       u(1);
       endDisp
       if endDisp < 5
              Vmin = u(1);
       else
              Vmax = u(1);
       endif
endwhile
Vmax
Vmin