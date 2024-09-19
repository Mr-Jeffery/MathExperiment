function h = hausdorffDist(A,B)
% This function is used to calculate the Hausdorff distance between sets A and B.
% A = gpuArray(A);
% B = gpuArray(B);
% H = gpuArray(zeros(length(A),length(B)));
% H = zeros(length(A),length(B));
% iterations=size(H);
% for ix=1:prod(iterations)
%     [s,t]=ind2sub(iterations,ix);
%     H(ix)=norm(A(:,s)-B(:,t));
% end
[AX,BX] =meshgrid(A(1,:),B(1,:));
[AY,BY] =meshgrid(A(2,:),B(2,:));
HX = AX-BX;
HY = AY-BY;
H = sqrt(HX.^2+HY.^2);
h = max(min(H));
end