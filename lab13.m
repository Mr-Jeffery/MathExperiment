clear
clf
n = 200;
k = 1e5;
p = 0.6;
inteval = -3:0.5:3;
bar(0:3:n,binopdf(0:3:n,n,p));
hold on
plot(normpdf(0:n,n*p,sqrt(p*(1-p)*n)),'LineWidth',2);% project the distribution
%% 
clear
clf
n = 200;
k = 1e5;
p = 0.6;
X1 = (binornd(n,p,[k,1])-n*p)/sqrt(p*(1-p)*n);% normalize the original distribution
inteval1 = -3:0.5:3;
bar(inteval1,ksdensity(X1,inteval1));
hold on
inteval2 = -3:0.01:3;
plot(inteval2,normpdf(inteval2),'LineWidth',2);

%% 
clear
clf
n = 10;
k = 1e5;
p = 0.6;
X1 = (binornd(n,p,[k,1])-n*p)/sqrt(p*(1-p)*n);
inteval1 = -3:0.5:3;
% bar(inteval1,ksdensity(X1,inteval1));
bar(ksdensity(X1));
hold on
inteval2 = -3:0.01:3;
plot(inteval2,normpdf(inteval2),'LineWidth',2);

% we can see that the distribution is far from gaussian distribution
%% 
n = 10;
pSuccess = 0.999;
icdf('Binomial',pSuccess,n,p)
icdf('Normal',pSuccess,n*p,sqrt(p*(1-p)*n))

n = 200;
pSuccess = 0.999;
icdf('Binomial',pSuccess,n,p)
icdf('Normal',pSuccess,n*p,sqrt(p*(1-p)*n))
%% 
clear
clf
S = 0:0.1:10;
R = 0:0.01:1;
for s = 1:length(S)
    for r = 1:length(R)
        V(s,r) = 1 - U(S(s),R(r));
    end
end
[S,R] = meshgrid(S,R);
contour(S,R,V,0:0.05:1,'ShowText','on')

%% 
figure(2)
clf
% I want my profit rate to be 0.2
contour(S,R,V,[0.2,1],'ShowText','on')
% People will only participate in the game if they can get more then they
% pay in some cases, so we assume s*r=1.1
hold on
[c2,h2] = contour(S,R,S.*R,[0,1,1.1],'ShowText','on');
% then we take the cross point of it, thus the optimal (s,r) is (2.3,0.47)
annotation(figure(2),'arrow',[0.408984375 0.320703125],...
    [0.553929577464789 0.499295774647887]);
datatip(h2,'DataIndex',2371);

function E = U(s,r)
p = 0.5;
n = 5;
f = [s,s.*r,s.*r.^2,s.*r.^2,s.*r,s];
prob = binopdf(0:n,n,p);
E = prob * f';
end