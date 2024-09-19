clf
x = [
    4.5596;
    5.0816;
    5.5546;
    5.9636;
    6.2756];
y = [
    0.8145;
    1.3686;
    1.9895;
    2.6925;
    3.5265];
A = ellipseSolver(x,y);% Solve out the coefficients
[X,Y] = meshgrid(-3:0.1:7);
%% 
clf
hold on
M = contour(X,Y,ellipFunc(X,Y,A),'LevelList',0);
M(:,1) = [];
scatter(M(1,:),M(2,:),200,'Marker','.')
noise = 0.01;
x1 = noiser(x,noise);
y1 = noiser(y,noise);
A1 = ellipseSolver(x1,y1);
% epsilon = 0.05;
% N = abs(ellipFunc(X,Y,A1))<epsilon;
% scatter(X(N),Y(N),100,'Marker','.')
M1 = contour(X,Y,ellipFunc(X,Y,A1),'LevelList',0);
M1(:,1) = [];
scatter(M1(1,:),M1(2,:),200,'Marker','.')
xlim([-3,7])
ylim([-3,7])
title(join(["\Delta=",sprintf("%f",A1(2)^2-A1(1)*A1(3))]))
scatter(x1,y1,200,'Marker','o');
contour(X,Y,ellipFunc(X,Y,A1),'LevelList',0);