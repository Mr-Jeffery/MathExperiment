clf
options = odeset('RelTol',1e-5);% set relative error tolerance
[t1,x1] = ode45(@odefun,[0,20],[10,-10,-10],options);
[t2,x2] = ode45(@odefun,[0,20],[10.001,-10,-10],options);

% comet3(x1(:,1),x1(:,2),x1(:,3))
% hold on
% comet3(x2(:,1),x2(:,2),x2(:,3))

for i = 1:length(t1)% compare their trajactory
    clf
    plot3(x1(1:i-1,1),x1(1:i-1,2),x1(1:i-1,3),'b')
    hold on
    plot3(x1(i,1),x1(i,2),x1(i,3),'bo')
    plot3(x2(1:i-1,1),x2(1:i-1,2),x2(1:i-1,3),'r')
    plot3(x2(i,1),x2(i,2),x2(i,3),'ro')
    axis([-30 40 -30 40 -20 60])
    view([-90,5,30])
    pause(0.001)
    drawnow
end

function dxdt = odefun(~,x)
dxdt = zeros(3,1);
sigma = 10;
r = 28;
b = 8/3;
dxdt(1) = -sigma*x(1)+sigma*x(2);
dxdt(2) = r*x(1)-x(2)-x(1).*x(3);
dxdt(3) = x(1).*x(2)-b*x(3);
end