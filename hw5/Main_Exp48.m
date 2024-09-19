clc,clear
N=1e5;
a=zeros(N,3);
GAM=2;
for k=1:N
    [D,m,E]=Exp4_8(GAM);
    a(k,:)=[D,m,E];
end
%plot3(a(:,1),a(:,2),a(:,3),'.')
plot( a(:,1)./a(:,3), a(:,2)./a(:,3),'.' )
axis equal
