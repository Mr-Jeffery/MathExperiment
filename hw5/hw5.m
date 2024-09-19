clf
n = 1e4;

X1 = 2*rand(n,1)-1; 
Y1 = (2*rand(n,1)-1).*sqrt(1-X1.^2);

R=rand(n,1);
Theta=2*pi*rand(n,1);
X2 = R.*cos(Theta);
Y2 = R.*sin(Theta);

X3 = sqrt(R).*cos(Theta);
Y3 = sqrt(R).*sin(Theta);

subplot(2,2,1)
scatter(X1,Y1,'.')
axis equal
ylim([-1,1])
xlim([-1,1])

subplot(2,2,2)
scatter(X2,Y2,'.')
axis equal
ylim([-1,1])
xlim([-1,1])

subplot(2,2,3)
scatter(X3,Y3,'.')
axis equal
ylim([-1,1])
xlim([-1,1])
