n = 1000;
err = zeros(n,1);
for t = 1:n
    err(t) = BisectionSelection;
end
plot(err)