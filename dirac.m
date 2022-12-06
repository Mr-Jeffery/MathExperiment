function glim = dirac(g0,v,n,r)
clear
clc
h = r/n;
R = linspace(0,r,n)';
F = zeros(n,1);
G = zeros(n,1);
F(1) = 0;
G(1) = g0;

for k = 2:length(R)
    G(k) = G(k-1) - h*F(k-1)*(F(k-1)^2-G(k-1)^2+1);
    F(k) = F(k-1)*R(k-1)^2/R(k)^2 - h*(R(k-1)/2+R(k)/2)^2*((F(k-1)^2-G(k-1)^2+v)*G(k-1))/R(k)^2;
end
glim = G(n);
