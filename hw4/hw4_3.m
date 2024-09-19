clc,clear
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
gridlength = 0.01;
[X,Y] = meshgrid(-3:gridlength:7);

M = contour(X,Y,ellipFunc(X,Y,A),'LevelList',0);
M(:,1) = [];
% scatter(M(1,:),M(2,:),200,'Marker','.')
hold on
Noise = fliplr(logspace(-8,-2,10))';
H = zeros(length(Noise),100);
tic
for n = 1:length(Noise)
    noise = Noise(n);
    parfor m = 1:100
        x1 = noiser(x,noise);
        y1 = noiser(y,noise);
        A1 = ellipseSolver(x1,y1);
        M1 = contour(X,Y,ellipFunc(X,Y,A1),'LevelList',0);
        M1(:,1) = [];
        %scatter(M1(1,:),M1(2,:),200,'Marker','.')
        H(n,m) =  hausdorffDist(M,M1);
    end
end
toc
% xlim([-3,7])
% ylim([-3,7])
%% 
figure(2)
loglog(Noise*100,sum(H,2)/100)
hold on
loglog(Noise*100,sqrt(2)*ones(size(Noise))/100)
ylabel('Hausdorff Distance')
xlabel('Noise Amplitude(%)')