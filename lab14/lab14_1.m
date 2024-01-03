v = 1;
T = 500;
clf
axis equal
P(1,:) = [50,-50];
P(2,:) = [0,-50];
P(3,:) = [-50,-50];
P(4,:) = [-50,0];
P(5,:) = [-50,50];
P(6,:) = [0,50];
P(7,:) = [50,50];
P(8,:) = [50,0];
for t = 1:T
    direction = zeros(8,2);
for k = 1:8
    direction(k,:) = P(mod(k-2,8)+1,:) - P(k,:);
    direction(k,:) = direction(k,:)/norm(direction(k,:));
end
P = P+direction.*v;
hold on
scatter(P(:,1),P(:,2),'blue','filled')
drawnow
end
