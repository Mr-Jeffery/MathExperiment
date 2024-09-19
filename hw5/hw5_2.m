% syms c v w S
% gamma2 = c^2/(c^2-v^2);
% h = 1 + w*S/c^2;
% factor(gamma2+h^2*gamma2^2*v^2-h^2*gamma2^2*c^2+2*h*gamma2*c^2*S - S^2)

syms rou S v c gam
c=1;
p = S*rou;
gamma = 1/sqrt(1-v^2/c^2);
h = 1 + gam*p/c^2/rou;
D = rou*gamma;
m = rou*h*gamma^2*v;
E = rou*h*gamma^2*c-p;
out = simplify((D/E)^2+(m/E)^2<1)
%% 
sout = (c*g - c^2*g + c^3*g + g*v^2 + c^2 - c^3 - v^2)^2 == v^2*(g + c^2*g - c^2)^2 + c^2*(c^2 - v^2)*(g - 1)^2;
pretty(sout)
%% 
