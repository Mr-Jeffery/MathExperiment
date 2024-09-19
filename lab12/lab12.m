options = odeset('RelTol',1e-5);% set relative error tolerance
[t,y] = ode45(@odefun,[0,200],[0,-1.04935871,1.2,0],options);
comet(y(:,3),y(:,1))%print trajactory


function dydt = odefun(~,y)
mu = 1/82.45;
lambda = 1-mu;
r1 = sqrt((y(3)+mu).^2+y(1).^2);
r2 = sqrt((y(3)-lambda).^2+y(1).^2);
dydt = zeros(4,1);
dydt(1) = y(2);
dydt(2) = -2.*y(4)+y(1)-lambda.*(y(1))./r1.^3-mu.*(y(1))./r2.^3;
dydt(3) = y(4);
dydt(4) = 2.*y(2)+y(3)-lambda.*(y(3)+mu)./r1.^3-mu.*(y(3)-lambda)./r2.^3;
end