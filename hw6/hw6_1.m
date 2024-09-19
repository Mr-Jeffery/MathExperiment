clc,clear
n = 1e3;
GAM = rand(n,1)+1;
% C = (GAM./(GAM-1));
C = 2;
clear GAM
rho = rand(n,1);
p = rand(n,1);
v = (2*rand(n,1)-1);
t = (2*rand(n,1)-1);
ga = 1./sqrt(1-v.^2);
h = 1+C.*(p./rho);
D = rho.*ga.*(1+t.*v);
m = rho.*h.*ga.^2.*v.*(1+t.*v)+t.*p;
E = rho.*h.*ga.^2-p+t.*m;

Yes = D.^2+m.^2<E.^2;

plot( D./E, m./E,'.')
title(sprintf('out of bound: %d',sum(Yes)-n))
axis equal
%% 
X = zeros(n,1);
for k = 1:10
    % X(k) = fsolve(@(x) C*x +m(k)^2/(E(k)+x) + sqrt(1-m(k)^2/(E(k)+x)^2) - E(k)-x,10);
    fplot(@(x) (C*x +m(k)^2/(E(k)+x) + sqrt(1-m(k)^2/(E(k)+x)^2) - E(k)-x),[0,5])
    hold on
end