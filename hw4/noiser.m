function newX = noiser(X,amplitude)
% adding noise to the input vector X, if you want to add 1% noise, let
% amplitude=0.01
Noise = (rand(size(X))*2-1)*amplitude;
newX = X.*(1+Noise);
end