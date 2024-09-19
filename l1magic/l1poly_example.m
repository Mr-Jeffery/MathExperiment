clear
path(path, './Optimization');
path(path, './Data');

% number of observations to make
K = 100;

% number of spikes in the signal
Enumber = 5;

% polynomial whose coeff unknown
f = @(x)1+x+x.^2+x.^3;

X = rand(K,1)*2-1;


B = f(X);
B_corrupt = B;
B_corrupt(randperm(K,Enumber)) = (rand(Enumber,1)*2-1)*100;

n = 3;
AN = [ones(K,1),X,X.^2,X.^3];
AL = LegendreMatrix(X,n);
polyCoeff_normal = l1decode_pd(rand(n+1,1), AN, [], B, 1e-3);
polyCoeff_legendre = l1decode_pd(rand(n+1,1), AL, [], B_corrupt, 1e-3);
polyCoeff_l2 = linsolve(AL'*AL,AL'*B_corrupt);
clf
% scatter(X,B_corrupt,'k.')
hold on
X0 = linspace(-1,1,100);
plot(X0,legendreval(polyCoeff_legendre,X0),'ro-')
plot(X0,polyval(flipud(polyCoeff_normal),X0),'b*-')
plot(X0,legendreval(polyCoeff_l2,X0),'r--',LineWidth=5)
fplot(f,[-1,1],'k',LineWidth=2)
l = legend('Legendre','x^k','l2 method','1+x+x^2+x^3');
l.set('Location','northwest')
%% 
polyCoeff_l2 = linsolve(AL'*AL,AL'*B_corrupt);
plot(X0,legendreval(polyCoeff_l2,X0),'r--',LineWidth=5)
%% for sin x
%Setting number of observation K=100
%number of corrupted is set to 10
%the result is still very satisfying
%Notice that both x^k and legendre polynomials perform well.
clf
for k = 1:6
    compareSin(k)
end



% function Coeff = LegendreCoeff(n)
% if n == 0
%     Coeff = [sym(1)];
% elseif n == 1
%     Coeff = [sym(0);sym(1)];
% else
%     Coeff = ([sym(2)*sym(n-1).*LegendreCoeff(sym(n)-sym(1))./sym(n);sym(0)]-[sym(0);sym(0);sym((n)-sym(1)).*LegendreCoeff(sym(n)-sym(2))./sym(n)]);
% end
%     Coeff = Coeff/sqrt(sym(2)/(sym(n)*sym(2)+sym(1)));
% end

function y = legendreval(p,x)
    n = length(p)-1;
    y = zeros(size(x));
    for k = 0:n
    y = p(k+1).*legendreP(k,x) + y;
    end
end

function Matrix = LegendreMatrix(X,n)
Matrix = zeros(length(X),n+1);
for k = 0:n
    % Matrix(:,k+1)=Lerandeval(X,k);
    Matrix(:,k+1) = legendreP(k,X);
end
end

function Matrix = normalMatrix(X,n)
    Matrix = zeros(length(X),n+1);
for k = 0:n
    Matrix(:,k+1)=X.^k;
end
end

function compareSin(k)
K = 100;
n = 2*k+3;
% number of spikes in the signal
Enumber = 5;

X = rand(K,1)*2-1;%random samples
AL = LegendreMatrix(X,n);
AN = normalMatrix(X,n);
B = sin(pi*X);
B_corrupt = B;
B_corrupt(randperm(K,Enumber)) = (rand(Enumber,1)*2-1)*10;
polyCoeff_legendre = l1decode_pd(rand(n+1,1), AL, [], B_corrupt, 1e-3);
polyCoeff_normal = l1decode_pd(rand(n+1,1), AN, [], B_corrupt, 1e-3);
polyCoeff_l2 = linsolve(AL'*AL,AL'*B_corrupt);
X0 = linspace(-1,1,100);
subplot(2,3,k)
scatter(X,B_corrupt,'k.')
hold on
plot(X0,legendreval(polyCoeff_legendre,X0),'go-')
title(sprintf('n=%d',n))
plot(X0,polyval(flipud(polyCoeff_normal),X0),'b*-')
plot(X0,legendreval(polyCoeff_l2,X0),'r--',LineWidth=2)
fplot(@(x)sin(pi*x),[-1,1],'k',LineWidth=2)
ylim([-5,5])
l = legend('data','Legendre','x^k','l2','sin(\pi x)');
l.set('Location','northwest')
end
