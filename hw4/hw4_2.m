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
[X,Y] = meshgrid(-3:0.01:7);
figure(1)
M = contour(X,Y,ellipFunc(X,Y,A),'LevelList',0);
M(:,1) = [];
scatter(M(1,:),M(2,:),200,'Marker','.')
hold on
Noise = [0.01:0.01:0.1,0.2:0.1:1];
% Noise = repmat(0.01:0.01:0.1,1,10).*10.^repelem(1:10,1,10);
C = zeros(5,100);
tic
for n = 1:length(Noise)
    noise = Noise(n);
    parfor m = 1:1e5
        x1 = noiser(x,noise);
        y1 = noiser(y,noise);
        A1 = ellipseSolver(x1,y1);
        %scatter(M1(1,:),M1(2,:),200,'Marker','.')
        C(n,m) = A1(2)^2-A1(1)*A1(3)<-0;
    end
end
toc
%% 
xlim([-3,7])
ylim([-3,7])
%% 
figure(2)
semilogx(Noise*100,sum(C,2)/1e5,"")
ylabel('Probability')
xlabel('Noise Amplitude(%)')
function a = ellipseSolver(X,Y)
% X and Y must be two column vectors whose lengths are five.
A = [X.^2 2*X.*Y Y.^2 2*X 2*Y];
a = linsolve(A,-ones(5,1));
end

function E  = ellipFunc(X,Y,A)
% get the elliptic function value with given parameters A
E = A(1)*X.^2+2*A(2)*X.*Y+A(3)*Y.^2+2*A(4)*X+2*A(5)*Y+1;
end

function newX = noiser(X,amplitude)
% adding noise to the input vector X, if you want to add 1% noise, let
% amplitude=0.01
Noise = (rand(size(X))*2-1)*amplitude;
newX = X.*(1+Noise);
end

function h = hausdorffDist(A,B)
% This function is used to calculate the Hausdorff distance between sets A and B.
% A = gpuArray(A);
% B = gpuArray(B);
% H = gpuArray(zeros(length(A),length(B)));
% H = zeros(length(A),length(B));
% iterations=size(H);
% for ix=1:prod(iterations)
%     [s,t]=ind2sub(iterations,ix);
%     H(ix)=norm(A(:,s)-B(:,t));
% end
[AX,BX] =meshgrid(A(1,:),B(1,:));
[AY,BY] =meshgrid(A(2,:),B(2,:));
HX = AX-BX;
HY = AY-BY;
H = sqrt(HX.^2+HY.^2);
h = max(min(H));
end