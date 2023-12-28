syms x
f = @(x)sin(x);

symValue = int(f(x),0,1);

intValues = arrayfun(@(k)intGauss(@(x)exp(x),k,0,1),[2,4,8,16,32,64]);
loglog(double(abs(intValues-symValue)))

function intValue = intGauss(f,n,a,b)
load('lab10_2.mat');
newf = @(x)f(x.*(b-a)./2+(b+a)./2);
switch n
    case 2
        W = n2(:,1);
        X = n2(:,2);
    case 4
        W = n4(:,1);
        X = n4(:,2);
    case 8
        W = n8(:,1);
        X = n8(:,2);
    case 16
        W = n16(:,1);
        X = n16(:,2);
    case 32
        W = n32(:,1);
        X = n32(:,2);
    case 64
        W = n64(:,1);
        X = n64(:,2);
end
intValue = (b-a)/2*sum(newf(X).*W);
end