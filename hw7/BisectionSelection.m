function err = BisectionSelection

GAM = rand+1;
C = (GAM./(GAM-1));
clear GAM
rho = rand;
p = rand*1000;
v = (2*rand-1);
ga = 1./sqrt(1-v.^2);
h = 1+C.*(p./rho);
D = rho.*ga;
m = rho.*h.*ga.^2.*v;
E = rho.*h.*ga.^2-p;


f = @(x)(C.*x + m^2./(E+x) + D.*sqrt(1-m.^2./(E+x).^2) - E-x);
Phi0 = f(0);
t = (-Phi0 + m^2/E)/(C-1);
a(1) = -Phi0./(C-1);
% a(1) = 0;
b(1)=t;
%-Phi0.*(C-1)
h=1;
k=1;
fL=f( a(1) );
fR=f( b(1) );
while h>=1e-5
    xk=(a(k)+b(k))/2;
    fk = f(xk);
    if fL*fk<0
        a(k+1)=a(k);
        b(k+1)=xk;
    else
        a(k+1)=xk;
        b(k+1)=b(k);
    end
    k=k+1;
    h=h/2;
end
xk=(a(k)+b(k))/2;
err = abs(xk-p);
end