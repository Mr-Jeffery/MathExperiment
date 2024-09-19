clc,clear;

A=[2 3 2;10 3 4;3 6 1];

x0 = [0;0;1];
xx = x0;
for k=1:20
    k
    
    yy = A*xx;
    mk = max(yy);
    xx = yy/mk;
    
    t0 = max(x0);
    x0 = yy;
    t1 = mk;
    if(abs(t1-t0)<1.0e-8) 
        lam1=t1
        xx
        return
    end
end
