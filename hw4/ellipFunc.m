function E  = ellipFunc(X,Y,A)
% get the elliptic function value with given parameters A
E = A(1)*X.^2+2*A(2)*X.*Y+A(3)*Y.^2+2*A(4)*X+2*A(5)*Y+1;
end