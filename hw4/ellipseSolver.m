function a = ellipseSolver(X,Y)
% X and Y must be two column vectors whose lengths are five.
A = [X.^2 2*X.*Y Y.^2 2*X 2*Y];
a = linsolve(A,-ones(5,1));
end