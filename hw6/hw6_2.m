clc,clear
n = 1e3;
GAM = rand(n,1)+1;
C = (GAM./(GAM-1));
clear GAM
rho = rand(n,1);
p = rand(n,1);
v = (2*rand(n,1)-1);
t = (2*rand(n,1)-1);
ga = 1./sqrt(1-v.^2);
h = 1+C.*(p./rho);
D = rho.*ga;
m = rho.*h.*ga.^2.*v;
E = rho.*h.*ga.^2-p;
sum(D.^2+m.^2<E.^2)-n
%% 
Initial = randi(-floor(min(-m.^2./(E) + D.*sqrt(1-m.^2./(E).^2) - E,[],"all")),1e2,1);
Solution = zeros(size(Initial));
parfor k = 1:n
    for s = 1:1e2
    Solution(k,s) = fsolve(@(x) C*x +m(k)^2/(E(k)+x) + D(k)*sqrt(1-m(k)^2/(E(k)+x)^2) - E(k)-x,Initial(s));
    end
end
%% 
clf
scatter(repmat((1:n)',1,1e2),Solution,'b.')
hold on
scatter(1:n,max(Solution,[],2)-min(Solution,[],2),'.')
% set(gca, 'YScale', 'log')
% semilogy([0,1e3],[0,0],"LineWidth",2,"Color",'k')