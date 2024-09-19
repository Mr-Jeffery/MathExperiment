function [D,m,E]=Exp4_8(GAM)
rho=rand;
p=rand;
v=(2*rand-1);
ga=1/sqrt(1-v^2);
h=1+(GAM/(GAM-1))*(p/rho);
D=rho*ga;
m=rho*h*ga^2*v;
E=rho*h*ga^2-p;
end

