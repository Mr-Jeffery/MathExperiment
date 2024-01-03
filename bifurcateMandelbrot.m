%% Mandelbrot Set and Bifurcation Diagram
% Most people do know about Mandelbrot set and bifurcation diagram in dynamical system, 
% but many people do not know that these two pictures are essentially different angle of 
% the same picture.
n = 501;%point number on each diamation, should be an odd number so that x axis is sampled
X = linspace(-2,0.5,n);
Y = linspace(-1,1,n);
M = 3000;
[X,Y] = meshgrid(X,Y);
Z0 = X + 1i.*Y;
Z = Z0;
Zin = zeros(size(Z0));
for k = 1:M
%     Z = Z.^2 + Z0;
    Active = Zin==k-1;
    Z(Active) = Z(Active).^2 + Z0(Active);% Iterate only the points that are still in the circle.
    Zin(abs(Z)<2&Active) = Zin(abs(Z)<2&Active) + 1; % Record when a point iterate out of the circle.
end
%% 
clf
hold on
Zm = Zin>=M&abs(imag(Z))~=0;
for iter = 1:32% draw Mandelbrot Set
    hold on
    scatter3(X(Zm),Y(Zm),real(Z(Zm)),'r.')
    hold on
    Z = Z.^2 + Z0;
end
for iter = 1:16% draw bifurcation diagram
    hold on
    scatter3(X(imag(Z)==0),Y(imag(Z)==0),Z(imag(Z)==0),'b.')
    Z = Z.^2 + Z0;
end
zlim([-2,2])
xlim([-2,0.5])
ylim([-1,1])
axis equal
for angle = 90:-1:0
view([0,angle])
pause(0.1)
end