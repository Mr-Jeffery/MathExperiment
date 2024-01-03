clear f g
steps = 1e8;
v = 0.7;
r = 100;
h = r/steps;
f0 = 0;
g0 = 1.08841573544641168069802006357349455356597900390625;%0.652037247666157782077789306640625
%1.08841573544641168069802006357349455356597900390625
f = zeros(steps,1);
g = zeros(steps,1);
f(1) =  - h*(0.5)^2*(v*g0 + g0.*(-g0.^2));
g(1) = g0;
for n = 1:steps
    g(n+1) = g(n) - (f(n) + f(n).*(f(n).^2-g(n).^2))*h;
    f(n+1) = f(n)*(n/(n+1))^2 - h*(n+0.5)^2/(n+1)^2*(v*g(n) + g(n).*(f(n).^2-g(n).^2));
end
figure(1)
clf
plot(h*(0:steps+1),[f0;f])
hold on
plot(h*(0:steps+1),[g0;g]) 
% figure(2)
% plot3(f,g,h*(0:steps))

%% 
a = 1;
b = 1.09;
v = 0.7;
gx = 1;
while abs(b-a)>1e-15
    x = (b+a)./2;
    sprintf('%0.55f',x)
    gx = fg(x,v);
    if gx<=0
        b=x;
    else
        a=x;
    end
end
x
%% 

function gt = fg(g0,v)
steps = 1e8;
f(1) = 0;
g(1) = g0;
r = 100;
h = r/steps;
f = zeros(steps,1);
g = zeros(steps,1);
f(1) =  - h*(0.5)^2*(v*g0 + g0.*(-g0.^2));
g(1) = g0;
for n = 1:steps
    g(n+1) = g(n) - (f(n) + f(n).*(f(n).^2-g(n).^2))*h;
    f(n+1) = f(n)*(n/(n+1))^2 - h*(n+0.5)^2/(n+1)^2*(v*g(n) + g(n).*(f(n).^2-g(n).^2));
end
% for n = 1:steps
%     g(n+1) = g(n) - (f(n) + f(n).*(f(n).^2-g(n).^2))*h;
%     % f(n+1) = f(n)*(n/(n+1))^2 - h*(n+0.5)^2/(n+1)^2*(v*g(n) + g(n).*(f(n).^2-g(n).^2));
%     f(n+1) = f(n)*((n-1)/(n))^2 - h*(n-0.5)^2/(n)^2*(v*g(n) + g(n).*(f(n).^2-g(n).^2));
% end
gt = g(end);
end