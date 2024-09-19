function f=NXS(a)
f=0;
n=length(a);
for k=2:n
    for m=1:k
        if a(m)>a(k)
            f=f+1;
        end
    end
end
end
        