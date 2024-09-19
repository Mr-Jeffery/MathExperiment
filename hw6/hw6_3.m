clc,clear
n = 1e3;
GAM = rand(n,1)+1;
C = (GAM./(GAM-1));
clear GAM
rho = rand(n,1);
p = rand(n,1)*100;
v = (2*rand(n,1)-1);
t = (2*rand(n,1)-1);
ga = 1./sqrt(1-v.^2);
h = 1+C.*(p./rho);
D = rho.*ga;
m = rho.*h.*ga.^2.*v;
E = rho.*h.*ga.^2-p;
Differences = C.*p +m.^2./(E+p) + D.*sqrt(1-m.^2./(E+p).^2) - E-p;
%% 
scatter(1:length(Differences),abs(Differences),'.')
set(gca, 'YScale', 'log')